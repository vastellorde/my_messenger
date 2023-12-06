import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/app/app.dart';
import 'package:my_messenger/app/runner.config.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
class Runner {
  static Future<void> run() async {
    await initializeDepedencies();
    Bloc.observer = TalkerBlocObserver(talker: GetIt.I.get());
    runApp(const App());
  }

  static Future<void> initializeDepedencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    $initGetIt(GetIt.instance);
  }
}
