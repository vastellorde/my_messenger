import 'package:injectable/injectable.dart';
import 'package:my_messenger/app/router/guards/auth_guard.dart';
import 'package:my_messenger/app/router/router.dart';
import 'package:my_messenger/core/services/auth/auth_service.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(AuthGuard authGuard) {
    return AppRouter(authGuard: authGuard);
  }

  @singleton
  AuthGuard authGuard(IAuthService authService) =>
      AuthGuard(isAuthorized: authService.isLoggedIn);
}
