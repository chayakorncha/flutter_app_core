import 'package:app_core/src/extensions/app_extensions.dart';

enum ResultState { success, failed, empty }

/// DONG 29 10 2021
///
/// class สำหรับ wrap Result data [T] เอาไว้ทำให้สามารถจัดการกับ [ResultState]
/// แต่ละแบบได้ง่ายขึ้่น สามารถเอาไปเป็น return type ได้กับทุก function ที่ต้องการได้เลย
///
/// Example:
/// ```dart
/// // Success Case
/// Result<String> findSomeText(String target) {
/// ...
/// return Result.success(result);
/// }
///
/// // Failed Case
/// Result<String> findSomeText(String target) {
/// ...
/// return Result.failed('unknown error occurred');
/// }
///
/// // Empty Case
/// Result<String> findSomeText(String target) {
/// ...
/// return result.isEmpty ? Result.empty() : Result.success(result);
/// }
///
/// หลังจาก Result reuturn ค่ากลับออกมาจาก method แล้ว ก็สามารถนำ [Result.state]
/// มาเช็คได้เลย
///
/// final result = someMethodReturnResultState();
/// switch (result.state) {
///   case ResultState.success : {
///     // success case
///     break;
///   }
///   case ResultState.failed : {
///     // failed case
///     break;
///   }
///   default: {
///     // empty case
///     break;
///   }
/// }
/// ```
class Result<T> {
  /// message ที่ต้องการเอาไว้แสดงให้ user ให้
  final String massage;

  /// state ของ Result เอาไว้ใช้แยกประเภทได้ง่ายขึ้น
  final ResultState state;

  /// result ของ data [T] ที่กำหนดเข้ามา
  /// 2
  final T? data;

  /// ตรวจว่ามี data หรือไม่
  bool get hasData => data != null;

  Result._internal(
    this.massage,
    this.state,
    this.data,
  );

  /// Success case ใช้ return หาก method นั้น success
  ///
  /// Example:
  /// ```dart
  /// Result<String> findSomeText(String target) {
  /// ...
  /// return Result.success(result);
  /// }
  /// ```
  factory Result.success(T data, {String? message}) => Result._internal(
        message.orEmpty,
        ResultState.success,
        data,
      );

  /// Failed case ใช้ return หาก method นั้น failed
  ///
  /// Example:
  /// ```dart
  /// Result<String> findSomeText(String target) {
  /// ...
  /// return Result.failed('unknown error occurred');
  /// }
  /// ```
  factory Result.failed({String? message}) => Result._internal(
        message.orEmpty.ifEmpty('something went wrong'),
        ResultState.failed,
        null,
      );

  /// Empty case ใช้ return หาก method นั้น empty
  ///
  /// Example:
  /// ```dart
  /// Result<String> findSomeText(String target) {
  /// ...
  /// return Result.empty();
  /// }
  /// ```
  factory Result.empty({String? message, T? data}) => Result._internal(
        message.orEmpty.ifEmpty('data is empty'),
        ResultState.empty,
        data,
      );

  /// ใช้สำหรับไม่ต้องการแยกประเภท [ResultState] ให้มองจาก [T] เท่านั้น
  /// โดยจะมีแค่ [ResultState] แค่ 2 ประเภทเท่านั้นที่ return ออกไป
  /// - [ResultState.empty]
  /// - [ResultState.success]
  ///
  /// โดยจะเช็คจาก [data] ถ้า == null จะถือว่าเป็น empty case
  ///
  /// Example:
  /// ```dart
  /// Result<String> findSomeText(String target) {
  /// ...
  /// return Result.dependOn(result);
  /// }
  /// ```
  static Result<T> dependOn<T>(T? data, {String? message}) {
    if (data == null) {
      return Result.empty(message: message);
    }
    return Result.success(data);
  }
}
