import 'package:auto_route/auto_route.dart';
import 'package:my_messenger/app/router/guards/auth_guard.dart';
import 'package:my_messenger/app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final AuthGuard authGuard;

  AppRouter({required this.authGuard});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          guards: [authGuard],
        ),
        AutoRoute(page: AuthRoute.page, path: '/auth', children: [
          RedirectRoute(path: '', redirectTo: 'login'),
          AutoRoute(page: LoginRoute.page, path: 'login')
        ]),
        AutoRoute(
          page: ChatRoute.page,
          path: '/room/:id',
        ),
        RedirectRoute(path: '*', redirectTo: '/')
      ];
}

@RoutePage(name: 'AuthRoute')
class AuthPage extends AutoRouter {
  const AuthPage({super.key});
}
