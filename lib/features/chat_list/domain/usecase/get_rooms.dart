import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/errors/failure.dart';
import 'package:my_messenger/core/interfaces/usecase.dart';
import 'package:my_messenger/core/utils/either/either.dart';
import 'package:my_messenger/features/chat_list/domain/enitity/chat_room_entity.dart';
import 'package:my_messenger/features/chat_list/domain/repository/chat_room_repostiory.dart';

@injectable
class GetRooms implements Usecase<List<ChatRoomEntity>, GetRoomsParams> {
  final IChatRoomRepository _repository;

  const GetRooms(this._repository);

  @override
  FutureOr<Either<Failure, List<ChatRoomEntity>>> call(GetRoomsParams params) =>
      _repository.getRooms(params.userId);
}

class GetRoomsParams {
  final String userId;

  const GetRoomsParams(this.userId);
}
