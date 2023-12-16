import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_messenger/app/router/router.dart';
import 'package:my_messenger/app/theme/app_theme_data.dart';
import 'package:my_messenger/app/theme/app_theme_notifier.dart';
import 'package:my_messenger/features/profile/presentation/state/profile_bloc.dart';
import 'package:provider/provider.dart';
import 'package:talker_flutter/talker_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppThemeNofifier(),
      child: BlocProvider<ProfileBloc>(
        create: (context) => GetIt.I.get()..add(const ProfileEvent.init()),
        lazy: false,
        child: Consumer<AppThemeNofifier>(
          builder: (context, theme, _) {
            return MaterialApp.router(
              themeMode: theme.mode,
              theme: AppThemeData.light,
              darkTheme: AppThemeData.dark,
              routerConfig: GetIt.I.get<AppRouter>().config(
                    navigatorObservers: () => [
                      TalkerRouteObserver(
                        GetIt.I.get<Talker>(),
                      ),
                    ],
                    reevaluateListenable: ReevaluateListenable.stream(
                      FirebaseAuth.instance.userChanges().distinct(),
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
