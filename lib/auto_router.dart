// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:yourone/features/authentication/sign_in_page.dart';
import 'package:yourone/features/authentication/sign_up_page.dart';
import 'package:yourone/features/search/presentation/home_swipe_page.dart';
import 'package:yourone/features/search/presentation/swipe_detail_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: HomeSwipePage),
    AutoRoute(page: SwipeDetailPage),
  ],
)
class $AppRouter {}
