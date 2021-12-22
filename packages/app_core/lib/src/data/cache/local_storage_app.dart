part of 'app_secure_storage.dart';

/// DONG 17 12 2021
///
/// class สำหรับทำ caching data (Shared preferences) ที่ file จะถูก encrypted
/// โดยจะใช้ library [FlutterSecureStorage] เป็นตัวหลักในเข้ารหัสไฟล์
///
/// * [ดูเพิ่มเติม FlutterSecureStorage](https://pub.dev/packages/flutter_secure_storage)
///
/// การใช้งาน มี factory ที่เป็นค่า default ให้ สามารถเรียกใช้ เพื่อสร้าง instance ได้เลย
///
/// /// Example:
/// ```dart
/// final appLocalStorage = AppLocalStorageSecure.defaultStorage();
/// // OR
/// final appLocalStorage = AppLocalStorageSecure<FlutterSecureStorage>(
///   const FlutterSecureStorage(...)
/// );
/// ```
///
/// หากระดับ app Project ต้องการที่จะ customize หรือปรับเปลี่ยนที่วิธีการ หรือ library ที่
/// ทำหน้าที่ encrypted file ให้ทำการ inherite จาก [AppSecureStorage] ที่เป็น structure
/// หลักแทนการใช้ [LocalStorageApp] โดยตรง
///
class LocalStorageApp<T extends FlutterSecureStorage>
    extends AppSecureStorage<T> {
  LocalStorageApp(T storage) : super(storage);

  factory LocalStorageApp.defaultStorage() => LocalStorageApp(
        const FlutterSecureStorage(
          aOptions: AndroidOptions(encryptedSharedPreferences: true),
        ) as T,
      );

  /// ทำการดึง value ออกมาตาม [key] ที่ส่งเข้ามา
  ///
  /// Note : [FlutterSecureStorage] รองรับการ return ค่าแค่ [String] เท่านั้น
  ///
  /// Example:
  /// ```dart
  /// final value = appLocalStorage.readSecure<String>('key');
  /// ```
  @override
  R? readSecure<R>(String key, {R? defaultValue}) {
    if (R.runtimeType is! String) {
      FlutterError(
        'type of R is not String, AppLocalStorage support only String Type',
      );
    }

    return let((it) async {
      final result = await secureStorage.read(key: key);
      return result;
    }) as R;
  }

  /// ทำการเก็บ [value] ที่ส่งเข้ามาลงใน local
  ///
  /// Note : [FlutterSecureStorage] รองรับการ write ค่าแค่ [String] เท่านั้น
  ///
  /// Example:
  /// ```dart
  /// appLocalStorage.writeSecure<String>('key', 'Save on disk');
  /// ```
  @override
  void writeSecure<W>(String key, W value) {
    if (W.runtimeType is! String) {
      FlutterError(
        'type of W is not String, AppLocalStorage support only String Type',
      );
    }

    let((_) async {
      await secureStorage.write(key: key, value: value as String);
    });
  }

  /// delete value ที่ตรงกับ [key] ที่ส่งเข้ามา
  ///
  /// Example:
  /// ```dart
  /// appLocalStorage.deleteSecure('key');
  /// ```
  @override
  void deleteSecure(String key) {
    let((_) async {
      await secureStorage.delete(key: key);
    });
  }

  /// delete data ทั้งหมดที่มีไม่สนใน key
  ///
  /// Example:
  /// ```dart
  /// appLocalStorage.deleteSecureAll();
  /// ```
  @override
  void deleteSecureAll() {
    let((it) async {
      await secureStorage.deleteAll();
    });
  }

}
