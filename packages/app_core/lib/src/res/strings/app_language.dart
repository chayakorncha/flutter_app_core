import 'package:app_core/src/l10n/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

typedef LookupLanguage = AppLanguageLocale Function(
  String comCode,
  Locale locale,
);

/// DONG 28 09 2021
///
/// ใช้ในการทำ Localizations ใน ​App เป็น class ที่ custom เองโดยล้อกับโครงของ
/// L10n ที่ google provide ให้ แต่ L10n ธรรมดาไม่รองรับกับ ​App ที่ต้องรองรับ Requirement
/// จากหลายเจ้า ทำให้ต้อง custom Localizations เอง
///
/// การทำงานจะคล้ายกับ L10n ปกติ แต่เพิ่มขึ้นตอนที่ invoke [delegate] ต้องโยน [comCode]
/// เข้ามาเพื่อบอกให้ [AppLanguageLocale] รู้ว่าต้องหยิบ Wording จาก class ไหน
///
/// วิธีการ เพิ่ม, ลด ต้องทำขั้นตอนนี้
/// - class [L10n] เพิ่มประเภทของ locale ที่รองรับ
/// - [supportedLocales] หากมีการเพิ่ม / ลด locale ที่ support ต้องปรับตรงนี้ตาม
/// - [pickLang] เพิ่ม param กำหนด wording แต่ละภาษา ถ้าไม่ได้กำหนดมา จะ default th
/// - [_AppLanguageLocaleDelegate] ดูที่ comment หัว class
/// - [lookupAppLanguage] จะ check จาก [comCode] ที่ส่งเข้ามา หากมีการ customize wording
/// แยก ต้องเพิ่มใน switch case ด้วย ไม่งั้นจะตก [StandardWording]
/// - [BaseWording] กำหนด เพิ่ม / ลด wording ที่จะแสดงใน app ทั้งหมด ให้มาเพิ่มไว้ที่ class นี้
///
/// การเรียกใช้ต้องการ context ทุกครั้ง AppLanguageLocale.of(context)!.wording
/// จะได้ wording ตาม setting ของ system หรือตามที่ setting ตาม app ที่เลือก
///
/// Param :
/// - [W] Generic type ของ Class Wording ที่ต้องการจะใช้เป็น Class หลักในการ contain
/// master wording ทั้งหมด
///
/// Note:
/// หากมีการ Customize Wording ด้วยการ extends [BaseWording] การเรียกใช้จะต้องเรียกใช้ผ่าน
/// BuildContext.wordingFrom<Type>().wording เท่านั้น จะไม่สามารถเรียกใช้ context.wording ได้
/// หรืออาจจะสร้าง extendsion ขึ้นมาเองใน Project App เพื่อเรียกใช้งานได้สะดวกขึ้น
abstract class AppLanguageLocale<W extends BaseWording> {
  AppLanguageLocale(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  /// เก็บ locale ณ ตอนนั้น ตามที่ App รองรับ th, en
  final String localeName;

  /// เก็บ Instance ของ [W] ที่ต้องจะไว้เรียกใช้ wording ต่างๆ
  W get wordingInstance;

  /// ดึง locale ณ ตอนนั้น เพื่อเรียกใช้ instance ของ [wordingInstance]
  static AppLanguageLocale<W>? of<W extends BaseWording>(BuildContext context) {
    return Localizations.of<AppLanguageLocale<W>>(context, AppLanguageLocale);
  }

  /// delegate สำหรับไว้ใช้สร้าง instance ของ class wording จะใช้จังหวะเดียว
  /// ตอนสร้าง MaterialApp ครั้งแรกเท่านั้น
  ///
  /// Param :
  /// - [comCode] ส่ง comCode เข้ามาเพื่อให้สามารถแยกในแต่ละเจ้าได้
  /// - [lookupLanguage] builder สำหรับสร้าง instance ของ class wording ที่
  /// impl wording เอาไว้
  static LocalizationsDelegate<AppLanguageLocale> delegate(
    String comCode, {
    required LookupLanguage lookupLanguage,
  }) =>
      _AppLanguageLocaleDelegate(comCode, lookupLanguage);

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('th')
  ];

  /// ใช้สำหรับกำหนด wording ในแต่ละภาษาที่รองรับ จะมองจาก [localeName] ที่ถูกกำหนดมา
  @protected
  String pickLang({
    required String th,
    required String en,
  }) {
    switch (localeName) {
      case 'th':
        return th;
      case 'en':
        return en;
      default:
        return th;
    }
  }
}

/// ตัว SDK จะเข้ามาที่ Class นี้เพื่อเช็คว่าเป็น Locale ที่ support หรือไม่
/// ถ้า support จะ invoke [lookupAppLanguage] เพื่อไปดึงเอา instance
/// ของ Class wording ที่ provide ไว้ให้
class _AppLanguageLocaleDelegate
    extends LocalizationsDelegate<AppLanguageLocale> {
  const _AppLanguageLocaleDelegate(this.comCode, this.lookupLanguage);

  final String comCode;
  final LookupLanguage lookupLanguage;
  @override
  bool isSupported(Locale locale) =>
      L10n.supportLangStrings.contains(locale.languageCode);

  @override
  Future<AppLanguageLocale> load(Locale locale) =>
      SynchronousFuture<AppLanguageLocale>(lookupLanguage(comCode, locale));

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLanguageLocale> old) =>
      false;
}

/// ทำเป็น class แยกออกมาจาก [AppLanguageLocale] เพื่อไม่ให้ code ในนั้นเยอะจนเกินไป
/// ทำหน้าที่ในการเก็บ Wording ที่ใช้แสดงใน App ทั้งเอาไว้
///
/// เพิ่ม Wording  App ในนี้ หากมี wording ไหนต้อง customize
/// ให้ extends จาก [StandardWording] เพื่อไป override wording นั้นๆ ต่อ
///
/// การประกาศตัวแปร
/// เป็นตัวแปรที่แสดงแบบเจาะจงหรือมีหน้าที่คล้ายกันแต่ wording ต่างกัน
/// เช่น แสดงใน hint เท่านั้น ให้ตั้งชื่อด้วยหน้าหน้าที่ของมันนำหน้า
/// แล้วค่อยตามด้วยชื่อ
///
/// เช่น
///
/// - hint_search ใช้แสดงในช่อง search เท่านั้น สมมุติ wording = รหัสสินค้า, ชื่อสินค้า
/// - search  ใช้แสดงในช่อง search เท่านั้น มี wording = ค้นหาสินค้า
///
/// เป็นตัวที่แสดงรายละเอียดของ header อีกที
///
/// เช่น
///
/// - detail_register ใช้เป็น subTitle หรือ detail จาก Header สมมุติ wording = กรอกรายละเอียดการสมัครสมาชิก
/// - register ใช้แสดงเป็น header สมมุติ wording = ลงทะเบียน
mixin BaseWording {
  String get language;

  String get search;

  String get searchByCategory;

  String get home;

  String get product;

  String get cart;

  String get profile;

  String get shop;

  String get viewProfile;

  String get login;

  String get logout;

  String get register;

  String get orderHistory;

  String get favourite;

  String get myCoupons;

  String get editAddress;

  String get changePassword;

  String get newsAndPromotion;

  String get contactUs;

  String get mySalesman;

  String get registerAccountSecondary;

  String get mainAccount;
}
