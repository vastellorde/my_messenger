import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  final bool isAuthorized;

  const AuthGuard({required this.isAuthorized});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isAuthorized) {
      router.pushNamed('/auth/login');
    } else {
      resolver.next();
    }
  }
}
