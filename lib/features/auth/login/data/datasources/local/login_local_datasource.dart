import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/consts/storage_keys.dart';

abstract interface class ILoginLocalDatasource {
  Future<void> saveToken({required String token});
}

@Injectable(as: ILoginLocalDatasource)
class LoginLocalDatasource implements ILoginLocalDatasource {
  @override
  Future<void> saveToken({required String token}) async {
    const storage = FlutterSecureStorage(iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock_this_device));
    await storage.write(key: StorageKeys.tokenKey, value: token);
  }
}