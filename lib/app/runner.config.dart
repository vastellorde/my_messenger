// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i22;

import '../core/http/dio_client_creator.dart' as _i27;
import '../core/http/dio_client_module.dart' as _i36;
import '../core/infrastructure/infrastructure_module.dart' as _i35;
import '../features/auth/login/data/datasources/remote/login_remote_datasource.dart'
    as _i10;
import '../features/auth/login/data/repositories/login_repository.dart' as _i12;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i11;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i28;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i19;
import '../features/auth/register/data/datasource/remote/register_remote_datasource.dart'
    as _i13;
import '../features/auth/register/data/repositories/register_repository.dart'
    as _i15;
import '../features/auth/register/domain/repositories/register_repository.dart'
    as _i14;
import '../features/auth/register/presentation/state/register_bloc.dart'
    as _i30;
import '../features/auth/register/presentation/state/register_form_bloc.dart'
    as _i20;
import '../features/chat/data/datasource/chat_remote_datasource.dart' as _i5;
import '../features/chat/data/repository/chat_repository.dart' as _i7;
import '../features/chat/domain/repositories/chat_repository.dart' as _i6;
import '../features/chat/domain/usecase/get_messages.dart' as _i24;
import '../features/chat/domain/usecase/send_message.dart' as _i21;
import '../features/chat/presentation/state/chat_bloc.dart' as _i31;
import '../features/chat_list/data/datasource/remote/chat_list_remote_datasource.dart'
    as _i4;
import '../features/chat_list/data/repository/chat_room_repository.dart' as _i9;
import '../features/chat_list/domain/repository/chat_room_repostiory.dart'
    as _i8;
import '../features/chat_list/domain/usecase/get_rooms.dart' as _i25;
import '../features/chat_list/presentation/state/chat_list_bloc.dart' as _i32;
import '../features/profile/presentation/state/profile_bloc.dart' as _i29;
import '../features/user/data/datasource/remote/user_remote_datasource.dart'
    as _i16;
import '../features/user/data/repositories/user_repostiory.dart' as _i18;
import '../features/user/domain/repositories/user_repository.dart' as _i17;
import '../features/user/domain/usecases/create_user.dart' as _i23;
import '../features/user/domain/usecases/get_user.dart' as _i26;
import 'router/router.dart' as _i3;
import 'router/router_module.dart' as _i34;

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
  gh.lazySingleton<_i4.IChatListRemoteDatasource>(
      () => _i4.ChatListRemoteDatasource());
  gh.lazySingleton<_i5.IChatRemoteDatasource>(() => _i5.ChatRemoteDatasource());
  gh.lazySingleton<_i6.IChatRepository>(
      () => _i7.ChatRepository(gh<_i5.IChatRemoteDatasource>()));
  gh.lazySingleton<_i8.IChatRoomRepository>(
      () => _i9.ChatRoomRepository(gh<_i4.IChatListRemoteDatasource>()));
  gh.lazySingleton<_i10.ILoginRemoteDatasource>(
      () => _i10.LoginRemoteDatasource());
  gh.lazySingleton<_i11.ILoginRepository>(
      () => _i12.LoginRepository(gh<_i10.ILoginRemoteDatasource>()));
  gh.lazySingleton<_i13.IRegisterRemoteDatasource>(
      () => _i13.RegisterRemoteDatasource());
  gh.lazySingleton<_i14.IRegisterRepository>(
      () => _i15.RegisterRepository(gh<_i13.IRegisterRemoteDatasource>()));
  gh.lazySingleton<_i16.IUserRemoteDatasource>(
      () => _i16.UserRemoteDatasource());
  gh.lazySingleton<_i17.IUserRepository>(
      () => _i18.UserRepository(gh<_i16.IUserRemoteDatasource>()));
  gh.factory<_i19.LoginFormBloc>(() => _i19.LoginFormBloc());
  gh.factory<_i20.RegisterFormBloc>(() => _i20.RegisterFormBloc());
  gh.factory<_i21.SendMessage>(
      () => _i21.SendMessage(gh<_i6.IChatRepository>()));
  gh.lazySingleton<_i22.Talker>(() => infrastructureModule.talker());
  gh.factory<_i23.CreateUser>(
      () => _i23.CreateUser(gh<_i17.IUserRepository>()));
  gh.factory<_i24.GetMessages>(
      () => _i24.GetMessages(gh<_i6.IChatRepository>()));
  gh.factory<_i25.GetRooms>(() => _i25.GetRooms(gh<_i8.IChatRoomRepository>()));
  gh.factory<_i26.GetUser>(() => _i26.GetUser(gh<_i17.IUserRepository>()));
  gh.singleton<_i27.IDioClientCreator>(
      _i27.DioClientCreator(gh<_i22.Talker>()));
  gh.factory<_i28.LoginBloc>(() => _i28.LoginBloc(
        gh<_i22.Talker>(),
        gh<_i11.ILoginRepository>(),
      ));
  gh.factory<_i29.ProfileBloc>(() => _i29.ProfileBloc(gh<_i26.GetUser>()));
  gh.factory<_i30.RegisterBloc>(() => _i30.RegisterBloc(
        gh<_i14.IRegisterRepository>(),
        gh<_i23.CreateUser>(),
      ));
  gh.factory<_i31.ChatBloc>(() => _i31.ChatBloc(
        gh<_i24.GetMessages>(),
        gh<_i21.SendMessage>(),
        gh<_i26.GetUser>(),
      ));
  gh.factory<_i32.ChatListBloc>(() => _i32.ChatListBloc(gh<_i25.GetRooms>()));
  gh.singleton<_i33.Dio>(
      dioClientModule.makeDioClient(gh<_i27.IDioClientCreator>()));
  return getIt;
}

class _$RouterModule extends _i34.RouterModule {}

class _$InfrastructureModule extends _i35.InfrastructureModule {}

class _$DioClientModule extends _i36.DioClientModule {}
