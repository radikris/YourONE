// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:yourone/features/authentication/presentation/sign_in_page.dart';
import 'package:yourone/features/authentication/presentation/sign_up_page.dart';
import 'package:yourone/features/chat/chat_detail_page.dart';
import 'package:yourone/features/chat/chat_list_page.dart';
import 'package:yourone/features/profile/presentation/profile_page.dart';
import 'package:yourone/features/search/presentation/home_swipe_page.dart';
import 'package:yourone/features/search/presentation/swipe_detail_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomeSwipePage),
    AutoRoute(page: SwipeDetailPage),
    AutoRoute(page: ChatListPage),
    AutoRoute(page: ChatDetailPage),
    AutoRoute(page: ProfilePage),
  ],
)
class $AppRouter {}
