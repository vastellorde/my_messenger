import 'package:injectable/injectable.dart';
import 'package:my_messenger/app/router/router.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter() {
    return AppRouter();
  }
}
