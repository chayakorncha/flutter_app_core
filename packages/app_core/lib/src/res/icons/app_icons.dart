import 'package:app_core/src/config/index_app.dart';

part 'standard_app_icon.dart';

mixin AppIcon {
  static AppIcon? _instance;

  static I initAppIcon<I extends AppIcon>(I instance) {
    _instance = instance;
    return _instance as I;
  }

  static AppIcon standard() => initAppIcon(StandardAppIcon());

  /// invoke เพื่อเรียกใช้งานค่าสีต่างๆ ที่ custom ไว้
  static I of<I extends AppIcon>() {
    if (_instance == null) {
      throw FlutterError(
          'AppIcon instance is null, the factory initIconApp() was not be called.');
    }
    return _instance! as I;
  }

  IconData get cart;

  IconData get home;

  IconData get product;

  IconData get profile;

  IconData get search;

  IconData get addShoppingCart;

  IconData get arrowForwardIos;

  IconData get keyboardArrowRight;

  IconData get shoppingCartOutlined;

  IconData get favoriteOutline;

  IconData get ticketPercentOutline;

  IconData get mapOutlined;

  IconData get lockOutline;

  IconData get newspaperVariantOutline;

  IconData get comment;

  IconData get face;

  IconData get phoneInTalkOut;

  /// ใช้สำหรับดึง asset ที่ import เข้ามาไว้ใน assets/image/
  ///
  /// Param :
  /// - [target] ส่งชื่อ file ที่ต้องการเรียกใช้
  ///
  /// Example :
  /// ```dart
  /// appIcon.fromAsset('user.png')
  /// ```
  Image fromAsset(String target) => Image.asset('assets/image/$target');
}
