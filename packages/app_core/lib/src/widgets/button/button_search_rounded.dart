import 'package:app_core/app_core.dart';

/// DONG 04 11 2021
///
/// สร้าง Standart ปุ่มค้นหา
/// Example:
/// ```dart
/// ButtonSearchRounded(
///  color: ..., // ถ้ากำหนด color นี้ จะทำให้ iconColor และ roundedColor ไม่ส่งผล
///  iconColor: ...,
///  roundedColor: ...,
///  onPressed: () {
///   ...
///  },
/// ),
/// ```
class ButtonSearchRounded extends StatelessWidgetApp {
  const ButtonSearchRounded({
    Key? key,
    required this.onPressed,
    Color? iconColor,
    Color? roundedColor,
    Color? color,
  })  : _color = color,
        _iconColor = iconColor ?? Colors.black,
        _roundedColor = roundedColor ?? Colors.black,
        super(key: key);

  final Function() onPressed;

  /// ถ้าจะกำหนดให้มีสีเดียวกัน กำหนดผ่านตัวแปรนี้ได้เลย
  final Color? _color;

  /// กำหนดสีของ Icon
  final Color _iconColor;

  /// กำหนดสีของ rounded
  final Color _roundedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: appDimension.size_10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: _color ?? _roundedColor,
        ),
      ),
      child: IconButton(
        color: _color ?? _iconColor,
        constraints: const BoxConstraints.tightFor(),
        onPressed: onPressed,
        icon: Icon(appIcon.search),
      ),
    );
  }
}
