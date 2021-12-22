part of 'app_icons.dart';

class StandardAppIcon implements AppIcon {
  StandardAppIcon();

  @override
  IconData get cart => Icons.shopping_cart;

  @override
  IconData get home => Icons.home;

  @override
  IconData get product => Icons.card_travel;

  @override
  IconData get profile => Icons.person;

  @override
  IconData get search => Icons.search;

  @override
  IconData get addShoppingCart => Icons.add_shopping_cart;

  @override
  IconData get arrowForwardIos => Icons.arrow_forward_ios;

  @override
  IconData get keyboardArrowRight => Icons.keyboard_arrow_right;

  @override
  IconData get shoppingCartOutlined => Icons.shopping_cart_outlined;

  @override
  IconData get favoriteOutline => Icons.favorite_outline;

  @override
  IconData get ticketPercentOutline => MdiIcons.ticketPercentOutline;

  @override
  IconData get mapOutlined => Icons.map_outlined;

  @override
  IconData get lockOutline => Icons.lock_outline;

  @override
  IconData get newspaperVariantOutline => MdiIcons.newspaperVariantOutline;

  @override
  IconData get comment => FontAwesomeIcons.comment;

  @override
  IconData get face => Icons.face;

  /// ใช้สำหรับดึง asset ที่ import เข้ามาไว้ใน assets/image/
  ///
  /// Param :
  /// - [target] ส่งชื่อ file ที่ต้องการเรียกใช้
  ///
  /// Example :
  /// ```dart
  /// appIcon.fromAsset('user.png')
  /// ```
  @override
  Image fromAsset(String target) => Image.asset('assets/image/$target');

  @override
  IconData get phoneInTalkOut => Icons.phone_in_talk;
}
