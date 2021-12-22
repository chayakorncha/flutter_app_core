import 'package:app_core/src/res/strings/app_language.dart';

class StandardWording<W extends BaseWording> extends AppLanguageLocale<W>
    implements BaseWording {
  StandardWording(String localeName) : super(localeName);

  @override
  W get wordingInstance => this as W;

  @override
  String get language => pickLang(
        th: 'ภาษาไทย',
        en: 'English',
      );

  @override
  String get search => pickLang(
        th: 'ค้นหา',
        en: 'Search',
      );

  @override
  String get searchByCategory => pickLang(
        th: 'ค้นหาจาก Category',
        en: 'Search by category',
      );

  @override
  String get cart => pickLang(
        th: 'ตระกร้า',
        en: 'cart',
      );

  @override
  String get home => pickLang(
        th: 'หน้าแรก',
        en: 'home',
      );

  @override
  String get product => pickLang(
        th: 'สินค้า',
        en: 'product',
      );

  @override
  String get profile => pickLang(
        th: 'โปรไฟล์',
        en: 'profile',
      );

  @override
  String get shop => pickLang(
        th: 'ร้านค้า',
        en: 'shop',
      );

  @override
  String get viewProfile => pickLang(
        th: 'ดูโปรไฟล์',
        en: 'View Profile',
      );

  @override
  String get logout => pickLang(
        th: 'ออกจากระบบ',
        en: 'Logout',
      );

  @override
  String get orderHistory => pickLang(
        th: 'ประวัติการซื้อ',
        en: 'Order history',
      );

  @override
  String get favourite => pickLang(
        th: 'รายการโปรด',
        en: 'Favourite',
      );

  @override
  String get myCoupons => pickLang(
        th: 'คูปองของฉัน',
        en: 'My Coupons',
      );

  @override
  String get editAddress => pickLang(
        th: 'แก้ไขที่อยู่',
        en: 'Edit address',
      );

  @override
  String get changePassword => pickLang(
        th: 'เปลี่ยนรหัสผ่าน',
        en: 'Change password',
      );

  @override
  String get newsAndPromotion => pickLang(
        th: 'ข่าวสารและโปรโมชั่น',
        en: 'News & Promotion',
      );

  @override
  String get contactUs => pickLang(
        th: 'ติดต่อเรา',
        en: 'Contact us',
      );

  @override
  String get mySalesman => pickLang(
        th: 'พนักงานขายของฉัน',
        en: 'My Salesman',
      );

  @override
  String get registerAccountSecondary => pickLang(
        th: 'ลงทะเบียนเป็นบัญชีรองจำหน่าย',
        en: 'Register as Account secondary',
      );

  @override
  String get mainAccount => pickLang(
        th: 'บัญชีหลัก',
        en: 'Main Account',
      );

  @override
  String get login => pickLang(
        th: 'เข้าสู่ระบบ',
        en: 'Login',
      );

  @override
  String get register => pickLang(
        th: 'ลงทะเบียน',
        en: 'Register',
      );
}
