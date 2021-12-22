import 'package:app_core/src/config/index_app.dart';

part 'standard_app_theme.dart';

mixin AppTheme {
  String kFontFamily = 'Kanit';

  static AppTheme? _instance;

  static AppColor appDesign = AppColor.of();

  static T initAppTheme<T extends AppTheme>(
    T instance, {
    required AppColor design,
  }) {
    _instance = instance;
    appDesign = design;
    return _instance as T;
  }

  static AppTheme standard() => initAppTheme(
        StandardAppTheme(),
        design: AppColor.of(),
      );

  /// invoke เพื่อเรียกใช้งานค่าสีต่างๆ ที่ custom ไว้
  static C of<C extends AppTheme>() {
    if (_instance == null) {
      throw FlutterError(
          'ApColor instance is null, the factory initAppColor() was not be called.');
    }
    return _instance! as C;
  }

  ThemeData defaultThemeData([String fontFamily = 'Kanit']);

  ThemeData getLightTheme();

  ThemeData getDarkTheme();
}
