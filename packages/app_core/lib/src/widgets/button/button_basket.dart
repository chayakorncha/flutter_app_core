/// AOF 15 10 2021
/// ใช้แสดงผลปุ่มที่เป็นตะกร้าสินค้า เหมาะกับ Widget ที่จะอยู่บน Product card
/// Example :
/// ```dart
/// const ButtonBasket(),
/// ```
import 'package:app_core/app_core.dart';

class ButtonBasket extends StatelessWidgetApp {
  const ButtonBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: appDimension.sizeW_44,
      height: appDimension.sizeH_24,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: context.appColor.primaryVariant,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(appDimension.radiusSize_10),
          ),
          elevation: appDimension.elevationSize_1,
        ),
        onPressed: () {
          // ignore: avoid_print
          print("Add to cart");
        },
        child: Icon(
          appIcon.addShoppingCart,
          size: appDimension.fontSize_16,
          color: context.appColor.onPrimary,
        ),
      ),
    );
  }
}
