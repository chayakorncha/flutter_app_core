import 'package:app_core/app_core.dart';
import 'package:app_core/src/models/customer.dart';

/// Enum แยก State ของ App ให้สามารถกำหนด Environment ต่างๆ ได้ถูกต้อง
enum EnvironmentState {
  dev,
  stage,
  prod,
}

/// Enum แยก Endpoint ของ App ให้สามารถกำหนดแยก endpoint ได้ถูกต้อง
enum EndpointsType {
  logo,
  base,
  dbo,
}

enum UserRole { guest, member, seller }

/// DONG 26 10 2021
///
/// environment holder ของ App ทั้งหมดที่จำเป็น
/// จัดการกับ config ต่างๆ ของ APP เพื่อควบคุมการทำงาน การเรียกใช้ res ต่างๆ ตาม [comCode]
class AppEnvironment {
  Customer _user;
  UserRole? _role;

  final String title;
  final String comCode;
  final String initialRoute;
  final Map<EndpointsType, String> _baseUrl;
  final AppRouter appRouter;
  final ThemeMode themeMode;
  final Widget child;

  AppEnvironment({
    required this.title,
    required this.comCode,
    required Customer user,
    required Map<EndpointsType, String> baseUrl,
    required this.appRouter,
    required this.themeMode,
    required this.child,
    UserRole? role,
    this.initialRoute = '/',
  })  : _user = user,
        _role = role ?? UserRole.guest,
        _baseUrl = baseUrl;

  void setUser(Customer user) => _user = user;

  Customer get user => _user;

  void setRole(UserRole role) => _role = role;

  UserRole? get role => _role;

  Map<EndpointsType, String> get baseUrl => _baseUrl;
}
