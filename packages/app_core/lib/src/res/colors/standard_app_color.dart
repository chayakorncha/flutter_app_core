part of 'app_color.dart';

class StandardAppColor implements AppColor {
  StandardAppColor();

  @override
  Color get primaryColor => Colors.white;

  @override
  Color get primaryColorDark => Colors.black;

  @override
  Color get primaryVariantColor => Colors.blue;
  @override
  Color get primaryVariantColorDark => Colors.blue;

  @override
  Color get onPrimaryColor => Colors.black;
  @override
  Color get onPrimaryColorDark => Colors.white;

  @override
  Color get secondaryColor => Colors.redAccent;
  @override
  Color get secondaryColorDark => Colors.redAccent;

  @override
  Color get secondaryVariantColor => Colors.redAccent;
  @override
  Color get secondaryVariantColorDark => Colors.redAccent;

  @override
  Color get onSecondaryColor => Colors.white;
  @override
  Color get onSecondaryColorDark => Colors.white;

  @override
  Color get background => Colors.white;
  @override
  Color get backgroundDark => Colors.black;

  @override
  MaterialColor get orangeColor => Colors.orange;
  @override
  MaterialColor get orangeColorDark => Colors.orange;

  @override
  MaterialColor orange(BuildContext context) =>
      MediaQuery.of(context).platformBrightness == Brightness.light
          ? orangeColor
          : orangeColorDark;

  @override
  Color get solidLightBlue => const Color.fromRGBO(241, 243, 248, 1);
  @override
  Color get navyBlue => const Color.fromRGBO(33, 37, 59, 1);

  @override
  Color get grey => Colors.grey;
  @override
  Color get unselectedItemColor => Colors.grey;

  @override
  Color get black => Colors.black;

  @override
  Color get white => Colors.white;
}