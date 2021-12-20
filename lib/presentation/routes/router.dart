import 'package:auto_route/auto_route.dart';
import 'package:todo/presentation/home/home_page.dart';
import 'package:todo/presentation/signup/signup_page.dart';
import 'package:todo/presentation/splash/splash_page.dart';
import 'package:todo/presentation/todo_detail/todo_detail_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignUpPage, initial: false),
    AutoRoute(page: HomePage, initial: false),
    AutoRoute(page: TodoDetail, initial: false, fullscreenDialog: true)
  ],
)
class $AppRouter {}
