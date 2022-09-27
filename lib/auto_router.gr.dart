// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'features/authentication/sign_in_page.dart' as _i1;
import 'features/authentication/sign_up_page.dart' as _i2;
import 'features/search/presentation/home_swipe_page.dart' as _i3;
import 'features/search/presentation/swipe_detail_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeSwipeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeSwipePage(),
      );
    },
    SwipeDetailRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SwipeDetailPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i5.RouteConfig(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        ),
        _i5.RouteConfig(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeSwipePage]
class HomeSwipeRoute extends _i5.PageRouteInfo<void> {
  const HomeSwipeRoute()
      : super(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        );

  static const String name = 'HomeSwipeRoute';
}

/// generated route for
/// [_i4.SwipeDetailPage]
class SwipeDetailRoute extends _i5.PageRouteInfo<void> {
  const SwipeDetailRoute()
      : super(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        );

  static const String name = 'SwipeDetailRoute';
}
