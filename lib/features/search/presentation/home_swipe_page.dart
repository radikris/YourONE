import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/entities/user_profile.dart';
import 'package:yourone/features/search/cubit/search_cubit.dart';
import 'package:yourone/features/search/presentation/widgets/bottom_buttons_row.dart';
import 'package:yourone/features/search/presentation/widgets/card_overlay.dart';
import 'package:yourone/features/search/presentation/widgets/profile_card.dart';
import 'package:yourone/features/search/presentation/widgets/success_match.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

class HomeSwipePage extends StatelessWidget {
  const HomeSwipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => getIt<SearchCubit>()..fetchPartners(),
      child: const HomeSwipeView(),
    );
  }
}

class HomeSwipeView extends StatefulWidget {
  const HomeSwipeView({super.key});

  @override
  State<HomeSwipeView> createState() => _HomeSwipeViewState();
}

class _HomeSwipeViewState extends State<HomeSwipeView> {
  late final SwipableStackController _controller;

  @override
  void initState() {
    super.initState();
    context.read<SearchCubit>().fetchPartners();
    _controller = SwipableStackController()
      ..addListener(() {
        if (context.read<SearchCubit>().items.length - 5 <=
            _controller.currentIndex) {
          //_items.addAll(_images);
          print('load again'); //TODO CALL REPOSITORY
          context.read<SearchCubit>().fetchPartners();
        }
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SearchCubit>().state;

    return Scaffold(
      appBar: AppAppBar(
        title: 'YourOne',
        subTitle: 'You amazed 15 people!',
        left: AppIcon(icon: Icon(Icons.manage_accounts)),
        backAction: () {
          context.pushRoute(ProfileRoute());
        },
        right: AppIcon(icon: Icon(Icons.chat)),
        rightAction: () {
          context.pushRoute(ChatListRoute());
        },
      ),
      body: SafeArea(
        top: false,
        child: state.when(
          error: (_) => SizedBox(),
          initial: () => SizedBox(),
          loading: () => SizedBox(),
          success: (data) => Stack(
            children: [
              Positioned.fill(
                  child: SwipableStack(
                detectableSwipeDirections: const {
                  SwipeDirection.right,
                  SwipeDirection.left,
                },
                controller: _controller,
                stackClipBehaviour: Clip.none,
                onSwipeCompleted: (index, direction) async {
                  final partner = context.read<SearchCubit>().items[index];

                  if (direction == SwipeDirection.right) {
                    final match = await context
                        .read<SearchCubit>()
                        .swipePartner(partnerId: partner.id!, toRight: true);
                    if (match != null) {
                      SuccessMatch.showCustomDialog(context, match);
                    }
                  }
                  if (direction == SwipeDirection.left) {
                    context
                        .read<SearchCubit>()
                        .swipePartner(partnerId: partner.id!, toRight: false);
                  }
                  print('$index, $direction');
                },
                horizontalSwipeThreshold: 0.8,
                verticalSwipeThreshold: 0.8,
                itemCount: context.read<SearchCubit>().items.length,
                builder: (context, properties) {
                  final itemIndex = properties.index;
                  final item = context.read<SearchCubit>().items[itemIndex];

                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushRoute(SwipeDetailRoute(profile: item));
                        },
                        child: ProfileCard(
                          name: '${item.name}, ${item.age}',
                          image: "https://loremflickr.com/640/480/abstract",
                          matchPercentage: item.match?.pct ?? 0,
                        ),
                      ),
                      // more custom overlay possible than with overlayBuilder
                      if (properties.stackIndex == 0 &&
                          properties.direction != null)
                        CardOverlay(
                          swipeProgress: properties.swipeProgress,
                          direction: properties.direction!,
                        )
                    ],
                  );
                },
              )),
              BottomButtonsRow(
                onSwipe: (direction) {
                  _controller.next(swipeDirection: direction);
                },
                canRewind: false,
                onRewindTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
