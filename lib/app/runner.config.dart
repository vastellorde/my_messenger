// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i29;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i20;

import '../core/http/dio_client_creator.dart' as _i24;
import '../core/http/dio_client_module.dart' as _i32;
import '../core/infrastructure/infrastructure_module.dart' as _i31;
import '../features/auth/login/data/datasources/remote/login_remote_datasource.dart'
    as _i9;
import '../features/auth/login/data/repositories/login_repository.dart' as _i11;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i10;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i25;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i18;
import '../features/auth/register/data/datasource/remote/register_remote_datasource.dart'
    as _i12;
import '../features/auth/register/data/repositories/register_repository.dart'
    as _i14;
import '../features/auth/register/domain/repositories/register_repository.dart'
    as _i13;
import '../features/auth/register/presentation/state/register_bloc.dart'
    as _i27;
import '../features/auth/register/presentation/state/register_form_bloc.dart'
    as _i19;
import '../features/chat/data/datasource/chat_remote_datasource.dart' as _i6;
import '../features/chat/presentation/state/chat_bloc.dart' as _i4;
import '../features/chat_list/data/datasource/remote/chat_list_remote_datasource.dart'
    as _i5;
import '../features/chat_list/data/repository/chat_room_repository.dart' as _i8;
import '../features/chat_list/domain/repository/chat_room_repostiory.dart'
    as _i7;
import '../features/chat_list/domain/usecase/get_rooms.dart' as _i22;
import '../features/chat_list/presentation/state/chat_list_bloc.dart' as _i28;
import '../features/profile/presentation/state/profile_bloc.dart' as _i26;
import '../features/user/data/datasource/remote/user_remote_datasource.dart'
    as _i15;
import '../features/user/data/repositories/user_repostiory.dart' as _i17;
import '../features/user/domain/repositories/user_repository.dart' as _i16;
import '../features/user/domain/usecases/create_user.dart' as _i21;
import '../features/user/domain/usecases/get_user.dart' as _i23;
import 'router/router.dart' as _i3;
import 'router/router_module.dart' as _i30;

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
  final routerModule = _$RouterModule();
  final infrastructureModule = _$InfrastructureModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.AppRouter>(routerModule.appRouter());
  gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
  gh.lazySingleton<_i5.IChatListRemoteDatasource>(
      () => _i5.ChatListRemoteDatasource());
  gh.lazySingleton<_i6.IChatRemoteDatasource>(() => _i6.ChatRemoteDatasource());
  gh.lazySingleton<_i7.IChatRoomRepository>(
      () => _i8.ChatRoomRepository(gh<_i5.IChatListRemoteDatasource>()));
  gh.lazySingleton<_i9.ILoginRemoteDatasource>(
      () => _i9.LoginRemoteDatasource());
  gh.lazySingleton<_i10.ILoginRepository>(
      () => _i11.LoginRepository(gh<_i9.ILoginRemoteDatasource>()));
  gh.lazySingleton<_i12.IRegisterRemoteDatasource>(
      () => _i12.RegisterRemoteDatasource());
  gh.lazySingleton<_i13.IRegisterRepository>(
      () => _i14.RegisterRepository(gh<_i12.IRegisterRemoteDatasource>()));
  gh.lazySingleton<_i15.IUserRemoteDatasource>(
      () => _i15.UserRemoteDatasource());
  gh.lazySingleton<_i16.IUserRepository>(
      () => _i17.UserRepository(gh<_i15.IUserRemoteDatasource>()));
  gh.factory<_i18.LoginFormBloc>(() => _i18.LoginFormBloc());
  gh.factory<_i19.RegisterFormBloc>(() => _i19.RegisterFormBloc());
  gh.lazySingleton<_i20.Talker>(() => infrastructureModule.talker());
  gh.factory<_i21.CreateUser>(
      () => _i21.CreateUser(gh<_i16.IUserRepository>()));
  gh.factory<_i22.GetRooms>(() => _i22.GetRooms(gh<_i7.IChatRoomRepository>()));
  gh.factory<_i23.GetUser>(() => _i23.GetUser(gh<_i16.IUserRepository>()));
  gh.singleton<_i24.IDioClientCreator>(
      _i24.DioClientCreator(gh<_i20.Talker>()));
  gh.factory<_i25.LoginBloc>(() => _i25.LoginBloc(
        gh<_i20.Talker>(),
        gh<_i10.ILoginRepository>(),
      ));
  gh.factory<_i26.ProfileBloc>(() => _i26.ProfileBloc(gh<_i23.GetUser>()));
  gh.factory<_i27.RegisterBloc>(() => _i27.RegisterBloc(
        gh<_i13.IRegisterRepository>(),
        gh<_i21.CreateUser>(),
      ));
  gh.factory<_i28.ChatListBloc>(() => _i28.ChatListBloc(gh<_i22.GetRooms>()));
  gh.singleton<_i29.Dio>(
      dioClientModule.makeDioClient(gh<_i24.IDioClientCreator>()));
  return getIt;
}

class _$RouterModule extends _i30.RouterModule {}

class _$InfrastructureModule extends _i31.InfrastructureModule {}

class _$DioClientModule extends _i32.DioClientModule {}
