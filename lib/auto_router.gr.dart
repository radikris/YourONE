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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import 'features/authentication/presentation/sign_in_page.dart' as _i1;
import 'features/authentication/presentation/sign_up_page.dart' as _i2;
import 'features/chat/chat_detail_page.dart' as _i6;
import 'features/chat/chat_list_page.dart' as _i5;
import 'features/profile/presentation/profile_page.dart' as _i7;
import 'features/profile/presentation/profile_update_wrapper_page.dart' as _i8;
import 'features/search/presentation/home_swipe_page.dart' as _i3;
import 'features/search/presentation/swipe_detail_page.dart' as _i4;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SignInPage(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    HomeSwipeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeSwipePage(),
      );
    },
    SwipeDetailRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SwipeDetailPage(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChatListPage(),
      );
    },
    ChatDetailRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ChatDetailPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    ProfileUpdateWrapperRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileUpdateWrapperRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ProfileUpdateWrapperPage(
          key: args.key,
          child: args.child,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SignInRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i9.RouteConfig(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        ),
        _i9.RouteConfig(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        ),
        _i9.RouteConfig(
          ChatListRoute.name,
          path: '/chat-list-page',
        ),
        _i9.RouteConfig(
          ChatDetailRoute.name,
          path: '/chat-detail-page',
        ),
        _i9.RouteConfig(
          ProfileRoute.name,
          path: '/profile-page',
        ),
        _i9.RouteConfig(
          ProfileUpdateWrapperRoute.name,
          path: '/profile-update-wrapper-page',
        ),
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i10.Key? key})
      : super(
          SignInRoute.name,
          path: '/',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i3.HomeSwipePage]
class HomeSwipeRoute extends _i9.PageRouteInfo<void> {
  const HomeSwipeRoute()
      : super(
          HomeSwipeRoute.name,
          path: '/home-swipe-page',
        );

  static const String name = 'HomeSwipeRoute';
}

/// generated route for
/// [_i4.SwipeDetailPage]
class SwipeDetailRoute extends _i9.PageRouteInfo<void> {
  const SwipeDetailRoute()
      : super(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
        );

  static const String name = 'SwipeDetailRoute';
}

/// generated route for
/// [_i5.ChatListPage]
class ChatListRoute extends _i9.PageRouteInfo<void> {
  const ChatListRoute()
      : super(
          ChatListRoute.name,
          path: '/chat-list-page',
        );

  static const String name = 'ChatListRoute';
}

/// generated route for
/// [_i6.ChatDetailPage]
class ChatDetailRoute extends _i9.PageRouteInfo<void> {
  const ChatDetailRoute()
      : super(
          ChatDetailRoute.name,
          path: '/chat-detail-page',
        );

  static const String name = 'ChatDetailRoute';
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.ProfileUpdateWrapperPage]
class ProfileUpdateWrapperRoute
    extends _i9.PageRouteInfo<ProfileUpdateWrapperRouteArgs> {
  ProfileUpdateWrapperRoute({
    _i10.Key? key,
    required _i10.Widget child,
  }) : super(
          ProfileUpdateWrapperRoute.name,
          path: '/profile-update-wrapper-page',
          args: ProfileUpdateWrapperRouteArgs(
            key: key,
            child: child,
          ),
        );

  static const String name = 'ProfileUpdateWrapperRoute';
}

class ProfileUpdateWrapperRouteArgs {
  const ProfileUpdateWrapperRouteArgs({
    this.key,
    required this.child,
  });

  final _i10.Key? key;

  final _i10.Widget child;

  @override
  String toString() {
    return 'ProfileUpdateWrapperRouteArgs{key: $key, child: $child}';
  }
}
