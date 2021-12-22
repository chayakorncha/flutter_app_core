import 'package:app_core/app_core.dart';

/// AOF 15 10 2021
/// ใช้แสดง chip label แสดงผลคล้ายๆ tag ติดโปรโมชั่นสินค้า
/// สามารถเขียน event โดยการส่ง VoidCallback เป็น Function เข้ามาใช้งานต่อได้
/// Example :
///```dart
///ChipAction(
///pressedChip: () => print("Click Chip Promotion"),
///bgColor: Colors.redAccent,
///borderColor: Colors.red,
///textColor: Colors.white,
///label: product.promotionProduct[0].promotionText ?? ""),
///),
/// ```
class ChipAction extends StatelessWidgetApp {
  const ChipAction({
    Key? key,
    required this.pressedChip,
    required this.bgColor,
    required this.borderColor,
    required this.textColor,
    required this.label,
  }) : super(key: key);

  final VoidCallback pressedChip;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (label.isNotEmpty) {
      return Positioned(
        left: appDimension.size_4,
        bottom: appDimension.size_2,
        child: ActionChip(
          elevation: appDimension.elevationSize_2,
          backgroundColor: bgColor,
          padding: EdgeInsets.zero,
          label: Text(
            label,
            style: appStyle.textCaption(context, color: textColor),
          ),
          onPressed: pressedChip,
        ),
      );
    } else {
      return Container();
    }
  }
}
