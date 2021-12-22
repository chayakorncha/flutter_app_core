import 'package:app_core/app_core.dart';

class ButtonSeeMore extends StatelessWidgetApp {
  const ButtonSeeMore({
    Key? key,
    required this.title,
    this.onPressedSeeMore,
  }) : super(key: key);

  final VoidCallback? onPressedSeeMore;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: context.appColor.background,
            elevation: 0,
            padding: EdgeInsets.zero),
        onPressed: onPressedSeeMore,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: appStyle.textSeeMore(context),
            ),
            SizedBox(
              width: appDimension.sizeW_8,
            ),
            Icon(
              appIcon.arrowForwardIos,
              size: appDimension.fontSize_16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
