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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'features/authentication/sign_in_page.dart' as _i1;
import 'features/authentication/sign_up_page.dart' as _i2;
import 'features/authentication/steps/sign_up_step_1.dart' as _i4;
import 'features/authentication/steps/sign_up_step_2.dart' as _i5;
import 'features/authentication/steps/sign_up_step_3.dart' as _i6;
import 'features/search/presentation/home_swipe_page.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeSwipeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeSwipePage(),
      );
    },
    SignUpStep1.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpStep1(),
      );
    },
    SignUpStep2.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpStep2(),
      );
    },
    SignUpStep3.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpStep3(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i7.RouteConfig(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        ),
        _i7.RouteConfig(
          SignUpStep1.name,
          path: '/sign-up-step1',
        ),
        _i7.RouteConfig(
          SignUpStep2.name,
          path: '/sign-up-step2',
        ),
        _i7.RouteConfig(
          SignUpStep3.name,
          path: '/sign-up-step3',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i7.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeSwipePage]
class HomeSwipeRoute extends _i7.PageRouteInfo<void> {
  const HomeSwipeRoute()
      : super(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        );

  static const String name = 'HomeSwipeRoute';
}

/// generated route for
/// [_i4.SignUpStep1]
class SignUpStep1 extends _i7.PageRouteInfo<void> {
  const SignUpStep1()
      : super(
          SignUpStep1.name,
          path: '/sign-up-step1',
        );

  static const String name = 'SignUpStep1';
}

/// generated route for
/// [_i5.SignUpStep2]
class SignUpStep2 extends _i7.PageRouteInfo<void> {
  const SignUpStep2()
      : super(
          SignUpStep2.name,
          path: '/sign-up-step2',
        );

  static const String name = 'SignUpStep2';
}

/// generated route for
/// [_i6.SignUpStep3]
class SignUpStep3 extends _i7.PageRouteInfo<void> {
  const SignUpStep3()
      : super(
          SignUpStep3.name,
          path: '/sign-up-step3',
        );

  static const String name = 'SignUpStep3';
}
