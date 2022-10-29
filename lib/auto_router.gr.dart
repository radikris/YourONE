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

import 'entities/user_profile.dart' as _i10;
import 'features/authentication/presentation/sign_in_page.dart' as _i1;
import 'features/authentication/presentation/sign_up_page.dart' as _i2;
import 'features/chat/chat_detail_page.dart' as _i6;
import 'features/chat/chat_list_page.dart' as _i5;
import 'features/profile/presentation/profile_page.dart' as _i7;
import 'features/search/presentation/home_swipe_page.dart' as _i3;
import 'features/search/presentation/swipe_detail_page.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SignInPage(key: args.key),
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
      final args = routeData.argsAs<SwipeDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SwipeDetailPage(
          key: args.key,
          profile: args.profile,
        ),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChatListPage(),
      );
    },
    ChatDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ChatDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ChatDetailPage(
          key: args.key,
          partner: args.partner,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
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
class SignInRoute extends _i8.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i9.Key? key})
      : super(
          SignInRoute.name,
          path: '/',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
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
class SwipeDetailRoute extends _i8.PageRouteInfo<SwipeDetailRouteArgs> {
  SwipeDetailRoute({
    _i9.Key? key,
    required _i10.UserProfile profile,
  }) : super(
          SwipeDetailRoute.name,
          path: '/swipe-detail-page',
          args: SwipeDetailRouteArgs(
            key: key,
            profile: profile,
          ),
        );

  static const String name = 'SwipeDetailRoute';
}

class SwipeDetailRouteArgs {
  const SwipeDetailRouteArgs({
    this.key,
    required this.profile,
  });

  final _i9.Key? key;

  final _i10.UserProfile profile;

  @override
  String toString() {
    return 'SwipeDetailRouteArgs{key: $key, profile: $profile}';
  }
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
class ChatDetailRoute extends _i8.PageRouteInfo<ChatDetailRouteArgs> {
  ChatDetailRoute({
    _i9.Key? key,
    required _i10.UserProfile partner,
  }) : super(
          ChatDetailRoute.name,
          path: '/chat-detail-page',
          args: ChatDetailRouteArgs(
            key: key,
            partner: partner,
          ),
        );

  static const String name = 'ChatDetailRoute';
}

class ChatDetailRouteArgs {
  const ChatDetailRouteArgs({
    this.key,
    required this.partner,
  });

  final _i9.Key? key;

  final _i10.UserProfile partner;

  @override
  String toString() {
    return 'ChatDetailRouteArgs{key: $key, partner: $partner}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfileRoute';
}
