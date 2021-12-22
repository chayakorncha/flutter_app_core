import 'package:app_core/src/config/index_app.dart';
import 'package:app_core/src/framework_app.dart' show AppContext;

part 'standard_app_style.dart';

mixin AppStyle {
  static AppStyle? _instance;

  static S initAppStyle<S extends AppStyle>(S instance) =>
      (_instance ??= instance) as S;

  static AppStyle standard() => initAppStyle(StandardAppStyle());

  /// invoke เพื่อเรียกใช้งานค่าสีต่างๆ ที่ custom ไว้
  static S of<S extends AppStyle>() {
    if (_instance == null) {
      throw FlutterError(
          'AppStyle instance is null, the factory initAppStyle() was not be called.');
    }
    return _instance! as S;
  }

  TextStyle textCaption(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });

  TextStyle textProduct(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });

  TextStyle textProductSalePrice(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });

  TextStyle textProductStandardPrice(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });

  TextStyle textSeeMore(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });

  TextStyle textTitleSeeMore(
    BuildContext context, {
    Color? color,
    double? fontSize,
  });
}
