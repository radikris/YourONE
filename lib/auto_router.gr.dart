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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import 'features/authentication/sign_in_page.dart' as _i1;
import 'features/authentication/sign_up_page.dart' as _i2;
import 'features/chat/chat_detail_page.dart' as _i6;
import 'features/chat/chat_list_page.dart' as _i5;
import 'features/profile/profile_page.dart' as _i7;
import 'features/search/presentation/home_swipe_page.dart' as _i3;
import 'features/search/presentation/swipe_detail_page.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeSwipeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeSwipePage(),
      );
    },
    SwipeDetailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SwipeDetailPage(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChatListPage(),
      );
    },
    ChatDetailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChatDetailPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>(
          orElse: () => const ProfileRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ProfilePage(key: args.key),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i8.RouteConfig(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        ),
        _i8.RouteConfig(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        ),
        _i8.RouteConfig(
          ChatListRoute.name,
          path: '/chat-list-page',
        ),
        _i8.RouteConfig(
          ChatDetailRoute.name,
          path: '/chat-detail-page',
        ),
        _i8.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeSwipePage]
class HomeSwipeRoute extends _i8.PageRouteInfo<void> {
  const HomeSwipeRoute()
      : super(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        );

  static const String name = 'HomeSwipeRoute';
}

/// generated route for
/// [_i4.SwipeDetailPage]
class SwipeDetailRoute extends _i8.PageRouteInfo<void> {
  const SwipeDetailRoute()
      : super(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        );

  static const String name = 'SwipeDetailRoute';
}

/// generated route for
/// [_i5.ChatListPage]
class ChatListRoute extends _i8.PageRouteInfo<void> {
  const ChatListRoute()
      : super(
          ChatListRoute.name,
          path: '/chat-list-page',
        );

  static const String name = 'ChatListRoute';
}

/// generated route for
/// [_i6.ChatDetailPage]
class ChatDetailRoute extends _i8.PageRouteInfo<void> {
  const ChatDetailRoute()
      : super(
          ChatDetailRoute.name,
          path: '/chat-detail-page',
        );

  static const String name = 'ChatDetailRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i9.Key? key})
      : super(
          ProfileRoute.name,
          path: '/profile-page',
          args: ProfileRouteArgs(key: key),
        );

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}
