// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i8;

import '../core/infrastructure/infrastructure_module.dart' as _i13;
import '../core/services/auth/auth_service.dart' as _i4;
import '../core/services/http/dio_client_creator.dart' as _i10;
import '../core/services/http/dio_client_module.dart' as _i15;
import '../features/auth/login/data/datasources/local/login_local_datasource.dart'
    as _i5;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i6;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i7;
import '../features/chat/presentation/state/chat_bloc.dart' as _i3;
import 'router/guards/auth_guard.dart' as _i9;
import 'router/router.dart' as _i11;
import 'router/router_module.dart' as _i14;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final infrastructureModule = _$InfrastructureModule();
  final routerModule = _$RouterModule();
  final dioClientModule = _$DioClientModule();
  gh.factory<_i3.ChatBloc>(() => _i3.ChatBloc());
  gh.singleton<_i4.IAuthService>(
    _i4.AuthService(),
    dispose: _i4.disposeService,
  );
  gh.factory<_i5.ILoginLocalDatasource>(() => _i5.LoginLocalDatasource());
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc());
  gh.factory<_i7.LoginFormBloc>(() => _i7.LoginFormBloc());
  gh.lazySingleton<_i8.Talker>(() => infrastructureModule.talker());
  gh.singleton<_i9.AuthGuard>(routerModule.authGuard(gh<_i4.IAuthService>()));
  gh.singleton<_i10.IDioClientCreator>(_i10.DioClientCreator(gh<_i8.Talker>()));
  gh.singleton<_i11.AppRouter>(routerModule.appRouter(gh<_i9.AuthGuard>()));
  gh.singleton<_i12.Dio>(
      dioClientModule.makeDioClient(gh<_i10.IDioClientCreator>()));
  return getIt;
}

class _$InfrastructureModule extends _i13.InfrastructureModule {}

class _$RouterModule extends _i14.RouterModule {}

class _$DioClientModule extends _i15.DioClientModule {}
