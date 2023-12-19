import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_messenger/features/user/data/models/user_model.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String username,
    required String email,
    required String id,
    required bool isOnline,
  }) = _UserEntity;

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity(
      username: model.username,
      email: model.email,
      id: model.id,
      isOnline: model.isOnline,
    );
  }

  UserModel toModel() {
    return UserModel(
      username: username,
      email: email,
      id: id,
      isOnline: isOnline,
    );
  }

  const UserEntity._();
}
