part of 'app_style.dart';

class StandardAppStyle implements AppStyle {
  StandardAppStyle();

  @override
  TextStyle textCaption(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.caption!.copyWith(
            color: color ?? context.appColor.secondary,
            fontSize: fontSize ?? AppDimensions.of().fontSize_10,
            fontWeight: FontWeight.bold,
          );

  @override
  TextStyle textProduct(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.headline6!.copyWith(
            color: color,
            fontSize: fontSize ?? AppDimensions.of().fontSize_14,
          );

  @override
  TextStyle textProductSalePrice(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.headline6!.copyWith(
            color: color ?? Theme.of(context).colorScheme.primaryVariant,
            fontSize: fontSize ?? AppDimensions.of().fontSize_16,
            fontWeight: FontWeight.bold,
          );

  @override
  TextStyle textProductStandardPrice(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.subtitle2!.copyWith(
            color: color ?? Colors.grey,
            fontSize: fontSize ?? AppDimensions.of().fontSize_12,
            decoration: TextDecoration.lineThrough,
          );

  @override
  TextStyle textSeeMore(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.subtitle1!.copyWith(
            color: color ?? Colors.grey.shade600,
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? AppDimensions.of().fontSize_14,
          );

  @override
  TextStyle textTitleSeeMore(
    BuildContext context, {
    Color? color,
    double? fontSize,
  }) =>
      Theme.of(context).textTheme.headline5!.copyWith(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? AppDimensions.of().fontSize_18,
          );
}
