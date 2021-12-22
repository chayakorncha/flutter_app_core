import 'package:app_core/app_core.dart';

typedef OnTabFavorite = void Function(bool valueChanged);

/// AOF 15 10 2021
/// ใช้แสดงผลปุ่มที่ Favorite โดยสามารถโยน Function เข้ามาเขียน event อื่น ๆให้ทำงานต่อใน widget ที่จะใช้ได้
/// true or false by localstoreage
/// Example :
/// ```dart
/// ButtonFavorite(
/// (valueChanged) => print('Is Favorite : $valueChanged'),
//isFavorite: true,
//),
/// ```
class ButtonFavorite extends StatelessWidgetApp {
  const ButtonFavorite(this.valueChanged, {this.isFavorite = false, Key? key})
      : super(key: key);

  final bool isFavorite;
  final OnTabFavorite valueChanged;

  @override
  Widget build(BuildContext context) {
    return FavoriteButton(
      iconSize: appDimension.fontSize_38,
      iconColor: context.appColor.primaryVariant,
      isFavorite: isFavorite,
      valueChanged: (value) => valueChanged(value),
    );
  }
}
