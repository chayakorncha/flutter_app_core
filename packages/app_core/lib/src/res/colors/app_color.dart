import 'package:app_core/app_core.dart';

part 'standard_app_color.dart';

mixin AppColor {
  static AppColor? _instance;

  /// ใช้เพื่อดึง ThemeMode [getLightTheme], [getDarkTheme] เท่านั้น
  /// ** ไม่เกี่ยวกับการเรียกใช้งาน Color ต่างๆ **
  /// ถ้าหากใช้ factory นี้แล้วมีการเรียกใช้ swatch color ต่างๆ จะทำให้ app พัง

  static C initAppColor<C extends AppColor>(C instance) {
    _instance = instance;
    return _instance as C;
  }

  static AppColor standard() => initAppColor(StandardAppColor());

  /// invoke เพื่อเรียกใช้งานค่าสีต่างๆ ที่ custom ไว้
  static C of<C extends AppColor>() {
    if (_instance == null) {
      throw FlutterError(
          'ApColor instance is null, the factory initAppColor() was not be called.');
    }
    return _instance! as C;
  }

  Color get primaryColor;

  Color get primaryColorDark;

  Color get primaryVariantColor;

  Color get primaryVariantColorDark;

  Color get onPrimaryColor;

  Color get onPrimaryColorDark;

  Color get secondaryColor;

  Color get secondaryColorDark;

  Color get secondaryVariantColor;

  Color get secondaryVariantColorDark;

  Color get onSecondaryColor;

  Color get onSecondaryColorDark;

  Color get background;

  Color get backgroundDark;

  Color get black;

  Color get white;

  MaterialColor get orangeColor;

  MaterialColor get orangeColorDark;

  MaterialColor orange(BuildContext context);

  Color get solidLightBlue;

  Color get navyBlue;

  Color get grey;

  Color get unselectedItemColor;
}
