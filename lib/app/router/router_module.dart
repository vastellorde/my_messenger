import 'package:injectable/injectable.dart';
import 'package:my_messenger/app/router/router.dart';
import 'package:my_messenger/core/services/auth/auth_service.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(IAuthService authService) {
    return AppRouter(authService: authService);
  }
}
