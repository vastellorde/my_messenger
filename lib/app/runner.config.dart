// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i9;

import '../core/infrastructure/infrastructure_module.dart' as _i16;
import '../core/services/auth/auth_service.dart' as _i10;
import '../core/services/http/dio_client_creator.dart' as _i11;
import '../core/services/http/dio_client_module.dart' as _i18;
import '../features/auth/login/data/datasources/local/login_local_datasource.dart'
    as _i4;
import '../features/auth/login/data/datasources/remote/login_remote_datasource.dart'
    as _i5;
import '../features/auth/login/data/repositories/login_repository.dart' as _i7;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i6;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i12;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i8;
import '../features/chat/presentation/state/chat_bloc.dart' as _i3;
import 'router/guards/auth_guard.dart' as _i13;
import 'router/router.dart' as _i15;
import 'router/router_module.dart' as _i17;

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
  gh.factory<_i4.ILoginLocalDatasource>(() => _i4.LoginLocalDatasource());
  gh.lazySingleton<_i5.ILoginRemoteDatasource>(
      () => _i5.LoginRemoteDatasource());
  gh.lazySingleton<_i6.ILoginRepository>(
      () => _i7.LoginRepository(gh<_i5.ILoginRemoteDatasource>()));
  gh.factory<_i8.LoginFormBloc>(() => _i8.LoginFormBloc());
  gh.lazySingleton<_i9.Talker>(() => infrastructureModule.talker());
  gh.singleton<_i10.IAuthService>(
    _i10.AuthService(talker: gh<_i9.Talker>()),
    dispose: _i10.disposeService,
  );
  gh.singleton<_i11.IDioClientCreator>(_i11.DioClientCreator(gh<_i9.Talker>()));
  gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(
        gh<_i9.Talker>(),
        gh<_i6.ILoginRepository>(),
      ));
  gh.singleton<_i13.AuthGuard>(routerModule.authGuard(gh<_i10.IAuthService>()));
  gh.singleton<_i14.Dio>(
      dioClientModule.makeDioClient(gh<_i11.IDioClientCreator>()));
  gh.singleton<_i15.AppRouter>(routerModule.appRouter(gh<_i13.AuthGuard>()));
  return getIt;
}

class _$InfrastructureModule extends _i16.InfrastructureModule {}

class _$RouterModule extends _i17.RouterModule {}

class _$DioClientModule extends _i18.DioClientModule {}
