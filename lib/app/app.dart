import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/router/router.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:talker_flutter/talker_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary, secondary: AppColors.secondary),
      ),
      routerConfig: GetIt.I.get<AppRouter>().config(
            navigatorObservers: () => [
              TalkerRouteObserver(
                GetIt.I.get<Talker>(),
              ),
            ],
          ),
    );
  }
}
