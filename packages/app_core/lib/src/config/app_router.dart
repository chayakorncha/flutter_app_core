import 'package:app_core/app_core.dart';

/// DONG 29 09 2021
///
/// class กลางใช้ในการจัดการ Route ทั้งหมดภายใน app
/// ให้ extends class นี้ไปแล้ว override [routing]
/// และ implement code ตาม logic
abstract class AppRouter {
  Widget routing(String? routeNamed) {
    return const Center(
      child: Text('Route named undefined'),
    );
  }
}
