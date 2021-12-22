import 'package:app_core/app_core.dart';

typedef OnTabNavBar = void Function(int? onTab);

/// AOF 15 10 2021
/// Widget สำหรับใช้แสดงผล BottomNavigationBar Icon + ข้อความ
/// - โยน list item ของ [BottomNavigationBarItem] เข้ามาเพื่อสั่งแสดงผลรายการ
/// - สามารถส่ง event เข้ามาเป็น Function ผ่าน onTab เพื่อไปใช้ Navigator ไปยังหน้าอื่น ๆได้
/// - Example :
/// ```dart
/// BottonNavigationBarApp(
///   currentIndex: currentIndex,
///   navBarList: _buindBottonNavBar(context),
///   onTab: (index) {
///     currentIndex = index ?? 0;
///     print('Tab index $index');
///   },
/// )
/// ```
class BottonNavigationBarApp extends StatelessWidgetApp {
  const BottonNavigationBarApp({
    required this.navBarList,
    required this.currentIndex,
    this.onTab,
    Key? key,
  }) : super(key: key);

  final int currentIndex;
  final List<BottomNavigationBarItem> navBarList;
  final OnTabNavBar? onTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: context.appColor.secondary,
      unselectedItemColor: appColor.unselectedItemColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => onTab!(index),
      items: navBarList,
    );
  }
}
