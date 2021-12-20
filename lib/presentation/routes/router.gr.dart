// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/entities/todo.dart' as _i7;
import '../home/home_page.dart' as _i3;
import '../signup/signup_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../todo_detail/todo_detail_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    TodoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TodoDetailRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.TodoDetail(key: args.key, todo: args.todo),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i5.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i5.RouteConfig(TodoDetailRoute.name, path: '/todo-detail')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.SignUpPage]
class SignUpPageRoute extends _i5.PageRouteInfo<void> {
  const SignUpPageRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for [_i3.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i4.TodoDetail]
class TodoDetailRoute extends _i5.PageRouteInfo<TodoDetailRouteArgs> {
  TodoDetailRoute({_i6.Key? key, required _i7.Todo? todo})
      : super(name,
            path: '/todo-detail',
            args: TodoDetailRouteArgs(key: key, todo: todo));

  static const String name = 'TodoDetailRoute';
}

class TodoDetailRouteArgs {
  const TodoDetailRouteArgs({this.key, required this.todo});

  final _i6.Key? key;

  final _i7.Todo? todo;
}
