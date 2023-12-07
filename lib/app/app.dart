import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/router/router.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/core/services/auth/auth_service.dart';
import 'package:talker_flutter/talker_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primary,
            secondary: AppColors.secondary,
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: AppColors.background,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 1,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 0,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 0,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
          )),
      routerConfig: GetIt.I.get<AppRouter>().config(
            navigatorObservers: () => [
              TalkerRouteObserver(
                GetIt.I.get<Talker>(),
              ),
            ],
            reevaluateListenable: ReevaluateListenable.stream(
              GetIt.I.get<IAuthService>().authStream.distinct(),
            ),
          ),
    );
  }
}
