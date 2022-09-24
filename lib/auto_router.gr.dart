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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'features/authentication/sign_in_page.dart' as _i1;
import 'features/authentication/sign_up_page.dart' as _i2;
import 'features/search/presentation/home_swipe_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeSwipeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeSwipePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i4.RouteConfig(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i4.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeSwipePage]
class HomeSwipeRoute extends _i4.PageRouteInfo<void> {
  const HomeSwipeRoute()
      : super(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        );

  static const String name = 'HomeSwipeRoute';
}
