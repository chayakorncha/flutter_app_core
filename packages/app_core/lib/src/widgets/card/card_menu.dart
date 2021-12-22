import 'package:app_core/app_core.dart';

/// 20211018 - TonGz
/// ใช้แสดง card ในรูปแบบเมนู
/// สามารถเขียน event โดยการส่ง VoidCallback เป็น Function เข้ามาใช้งานต่อได้
/// Example :
///```dart
///CardMenu(
///title: context.wording.orderHistory,
///leading: Icon(appIcon.shoppingCartOutlined),
///trailing: Icon(appIcon.keyboardArrowRight),
///),
/// ```
class CardMenu extends StatelessWidgetApp {
  const CardMenu({
    Key? key,
    required this.title,
    this.leading,
    this.trailing,
    this.onTab,
  }) : super(key: key);

  final String title;
  final Icon? leading;
  final Icon? trailing;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(appDimension.size_8),
      ),
      child: ListTile(
        title: Text(title),
        leading: leading,
        trailing: trailing,
        onTap: onTab,
      ),
    );
  }
}
