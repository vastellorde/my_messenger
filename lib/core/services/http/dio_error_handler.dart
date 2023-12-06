import 'package:my_messenger/core/services/http/models/error_model.dart';
import 'package:my_messenger/core/utils/either/either.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

abstract interface class IDioErrorHandler<DE> {
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(MakeRequest<T> makeRequest);
}

class DioErrorHandler<DE> implements IDioErrorHandler<DE> {
  @override
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(MakeRequest<T> makeRequest) async {
    try {
      final res = await makeRequest();

      return Either.right(res);
    } on Exception catch(e) {
      return Either.left(CommonResponseError.undefinedError(e));
    }
  }
}