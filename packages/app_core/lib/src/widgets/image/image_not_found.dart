import 'package:app_core/app_core.dart';

/// AOF 15 10 2021
/// ใช้แสดงผล widget แสดง icon และข้อความไม่พบรูป
/// จะใช้ในกรณี NetWorkImage error หรือกรณีไม่สามารถแสดงผลรูปจากเครื่องได้
/// Example :
/// ```dart
/// const ButtonBasket(),
/// ```
class ImageNotFound extends StatelessWidgetApp {
  const ImageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.image_not_supported,
              size: appDimension.size_50,
              color: Colors.black45,
            ),
            SizedBox(height: appDimension.size_8),
            Text(
              'Image Not Found',
              style: TextStyle(
                fontSize: appDimension.fontSize_12,
              ),
            ),
          ],
        ),
      );
}
