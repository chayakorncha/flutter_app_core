import 'package:app_core/src/config/index_app.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'local_storage_app.dart';

/// DONG 17 12 2021
///
/// โครงสำหรับเอาไป implement ต่อ สำหรับจัดการกับ caching ที่ data / file ถูก Encrypted
/// ควรใช้กับ data ที่มีความ sensitive เพิื่อปกป้องข้อมูลถูก hack
abstract class AppSecureStorage<T> {
  AppSecureStorage(this._storage);

  final T _storage;

  T get secureStorage => _storage;

  R? readSecure<R>(String key, {R? defaultValue});

  void writeSecure<W>(String key, W value);

  void deleteSecure(String key);

  void deleteSecureAll();
}
