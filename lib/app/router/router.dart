import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_messenger/app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true, children: [
          RedirectRoute(path: '', redirectTo: 'chat_list'),
          AutoRoute(page: ChatListRoute.page, path: 'chat_list'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
        ]),
        AutoRoute(
          page: AuthRoute.page,
          path: '/auth',
          children: [
            RedirectRoute(
              path: '',
              redirectTo: 'login',
            ),
            AutoRoute(
              page: LoginRoute.page,
              path: 'login',
            ),
            AutoRoute(
              page: RegisterRoute.page,
              path: 'register',
            ),
          ],
        ),
        AutoRoute(
          page: ChatRoute.page,
          path: '/room/:roomId',
        ),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        )
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isLoggedIn = FirebaseAuth.instance.currentUser != null;
    if (isLoggedIn ||
        resolver.routeName == AuthRoute.name ||
        resolver.routeName == LoginRoute.name ||
        resolver.routeName == RegisterRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(
        LoginRoute(
          onSuccess: () {
            resolver.next();
          },
        ),
      );
    }
  }
}

@RoutePage(name: 'AuthRoute')
class AuthPage extends AutoRouter {
  const AuthPage({super.key});
}
