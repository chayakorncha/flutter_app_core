part of 'app_theme.dart';

class StandardAppTheme implements AppTheme {


  @override
  String kFontFamily = 'Kanit';


  /// ทำเป็น Default ThemeData ถ้าต้องเพิ่มหรือ customize ThemeData
  /// ให้ Override method นี้ ไปจัดการ ThemeData ตาม requirement
  @override
  ThemeData defaultThemeData([String fontFamily = 'Kanit']) =>
      ThemeData(fontFamily: fontFamily);

  /// สร้าง Custom LightTheme
  @override
  ThemeData getLightTheme() => defaultThemeData().copyWith(
        colorScheme: ColorScheme.light(
            primary: AppTheme.appDesign.primaryColor,
            primaryVariant: AppTheme.appDesign.primaryVariantColor,
            onPrimary: AppTheme.appDesign.onPrimaryColor,
            secondary: AppTheme.appDesign.secondaryColor,
            secondaryVariant: AppTheme.appDesign.secondaryVariantColor,
            onSecondary: AppTheme.appDesign.onSecondaryColor,
            background: AppTheme.appDesign.background),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
          backgroundColor: AppTheme.appDesign.primaryColor,
        ),
        scaffoldBackgroundColor: AppTheme.appDesign.primaryColor,
      );

  /// สร้าง Custom darkTheme
  @override
  ThemeData getDarkTheme() => defaultThemeData().copyWith(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData().copyWith(
          backgroundColor: AppTheme.appDesign.primaryColorDark,
        ),
        scaffoldBackgroundColor: AppTheme.appDesign.primaryColorDark,
        colorScheme: ColorScheme.dark(
          primary: AppTheme.appDesign.primaryColorDark,
          primaryVariant: AppTheme.appDesign.primaryVariantColorDark,
          onPrimary: AppTheme.appDesign.onPrimaryColorDark,
          secondary: AppTheme.appDesign.secondaryColorDark,
          secondaryVariant: AppTheme.appDesign.secondaryVariantColorDark,
          onSecondary: AppTheme.appDesign.onSecondaryColorDark,
          background: AppTheme.appDesign.backgroundDark,
          surface: AppTheme.appDesign.backgroundDark,
        ),
      );

}