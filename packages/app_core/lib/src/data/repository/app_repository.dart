import 'package:meta/meta.dart';

/// DONG 29 10 2021
///
/// Repository สำหรับจัดการการเข้าถึง datasource จะทำหน้าที่ตัดสินใจว่าจะดึง
/// result ออกมาจาก localStorage หรือ remote แล้วทำการ return ค่านั้นออกไป
/// ที่ widget จะทำหน้าทีแสดงผลจาก result ที่ return ออกไปเท่านั้น
///
/// Example:
/// ```dart
/// class AuthenCustomerRepo extends AppRepositoty<AppLocalStorage, AppClient>
/// ```
abstract class AppRepositoty<LocalDataSource, RemoteDateSource> {
  AppRepositoty({
    this.localDataSource,
    this.remoteDataSource,
  });

  /// Instance ของ local database ที่ใช้ในแอพ return nullable
  @protected
  final LocalDataSource? localDataSource;

  /// Instance ของ remote ที่ใช้ในแอพ return nullable
  @protected
  final RemoteDateSource? remoteDataSource;

  @protected
  LocalDataSource get requireLocalDataSource => localDataSource!;

  @protected
  RemoteDateSource get requireRemoteDataSource => remoteDataSource!;
}
