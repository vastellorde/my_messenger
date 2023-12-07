// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:my_messenger/app/router/router.dart' as _i1;
import 'package:my_messenger/features/auth/login/presentation/ui/login_page.dart'
    as _i4;
import 'package:my_messenger/features/chat/presentation/ui/chat_page.dart'
    as _i2;
import 'package:my_messenger/features/home/presentation/ui/home_page.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LoginPage(
          onSuccess: args.onSuccess,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i5.PageRouteInfo<void> {
  const ChatRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    required void Function() onSuccess,
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            onSuccess: onSuccess,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<LoginRouteArgs> page =
      _i5.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    required this.onSuccess,
    this.key,
  });

  final void Function() onSuccess;

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{onSuccess: $onSuccess, key: $key}';
  }
}
