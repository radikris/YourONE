import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';
import 'package:yourone/auto_router.gr.dart';
import 'package:yourone/common/app_app_bar.dart';
import 'package:yourone/common/app_icon.dart';
import 'package:yourone/features/search/presentation/components/bottom_buttons_row.dart';
import 'package:yourone/features/search/presentation/components/card_overlay.dart';
import 'package:yourone/features/search/presentation/components/profile_card.dart';
import 'package:yourone/features/search/presentation/components/success_match.dart';

const _images = [
  "https://i.insider.com/5c48ef432bdd7f659443dc94?width=600&format=jpeg",
  "https://i.insider.com/57db03588a4565a36039483b?width=750&format=jpeg",
  "https://i.insider.com/593aed9cc4adee3a008b4ce1?width=750&format=jpeg",
  "https://i.pinimg.com/236x/3e/c3/4d/3ec34dfd7694806445b1d0292f9c059a--russian-womens-russian-girls.jpg"
];

class HomeSwipePage extends StatefulWidget {
  const HomeSwipePage({super.key});

  @override
  State<HomeSwipePage> createState() => _HomeSwipePageState();
}

class _HomeSwipePageState extends State<HomeSwipePage> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'YourOne',
        subTitle: 'You amazed 15 people!',
        left: AppIcon(icon: Icon(Icons.manage_accounts)),
        backAction: () {
          //context.pushRoute(route)
        },
        right: AppIcon(icon: Icon(Icons.chat)),
        rightAction: () {
          context.pushRoute(ChatListRoute());
        },
      ),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: SwipableStack(
                detectableSwipeDirections: const {
                  SwipeDirection.right,
                  SwipeDirection.left,
                },
                controller: _controller,
                stackClipBehaviour: Clip.none,
                onSwipeCompleted: (index, direction) {
                  if (direction == SwipeDirection.right) {
                    SuccessMatch.showCustomDialog(context);
                  }
                  print('$index, $direction');
                },
                horizontalSwipeThreshold: 0.8,
                verticalSwipeThreshold: 0.8,
                builder: (context, properties) {
                  final itemIndex = properties.index % _images.length;

                  return Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushRoute(SwipeDetailRoute());
                        },
                        child: ProfileCard(
                          name: 'Sample No.${itemIndex + 1}',
                          image: _images[itemIndex],
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
              ),
            ),
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
    );
  }
}
