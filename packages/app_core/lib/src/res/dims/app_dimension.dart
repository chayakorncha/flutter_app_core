import 'package:app_core/src/config/index_app.dart';

part 'standard_app_dimensions.dart';

mixin AppDimensions {
  static AppDimensions? _instance;

  static D initAppDims<D extends AppDimensions>(D instance) {
    _instance = instance;
    return _instance as D;
  }

  static AppDimensions standard() => initAppDims(StandardAppDimensions());

  /// invoke เพื่อเรียกใช้งานค่า dims ต่างๆ ที่ custom ไว้
  static D of<D extends AppDimensions>() {
    if (_instance == null) {
      throw FlutterError(
          'AppDimensions instance is null, the factory initAppDims() was not be called.');
    }
    return _instance! as D;
  }

  static bool isInit() => _instance != null;

  double get size_2;
  double get sizeW_2;
  double get sizeH_2;

  double get size_4;
  double get sizeW_4;
  double get sizeH_4;

  double get size_8;
  double get sizeW_8;
  double get sizeH_8;

  double get size_10;
  double get sizeW_10;
  double get sizeH_10;

  double get size_12;
  double get sizeW_12;
  double get sizeH_12;

  double get size_14;
  double get sizeW_14;
  double get sizeH_14;

  double get size_16;
  double get sizeW_16;
  double get sizeH_16;

  double get size_18;
  double get sizeW_18;
  double get sizeH_18;

  double get size_20;
  double get sizeW_20;
  double get sizeH_20;

  double get size_24;
  double get sizeW_24;
  double get sizeH_24;

  double get size_26;
  double get sizeW_26;
  double get sizeH_26;

  double get size_28;
  double get sizeW_28;
  double get sizeH_28;

  double get size_30;
  double get sizeW_30;
  double get sizeH_30;

  double get size_32;
  double get sizeW_32;
  double get sizeH_32;

  double get size_34;
  double get sizeW_34;
  double get sizeH_34;

  double get size_36;
  double get sizeW_36;
  double get sizeH_36;

  double get size_38;
  double get sizeW_38;
  double get sizeH_38;

  double get size_40;
  double get sizeW_40;
  double get sizeH_40;

  double get size_42;
  double get sizeW_42;
  double get sizeH_42;

  double get size_44;
  double get sizeW_44;
  double get sizeH_44;

  double get size_46;
  double get sizeW_46;
  double get sizeH_46;

  double get size_48;
  double get sizeW_48;
  double get sizeH_48;

  double get size_50;
  double get sizeW_50;
  double get sizeH_50;

  double get size_130;
  double get sizeW_130;
  double get sizeH_130;

  double get size_160;
  double get sizeW_160;
  double get sizeH_160;

  double get size_230;
  double get sizeW_230;
  double get sizeH_230;

  //elevation
  double get elevationSize_1;
  double get elevationSize_2;
  double get elevationSize_3;

  //radius
  double get radiusSize_8;
  double get radiusSize_10;

  //font
  double get fontSize_10;
  double get fontSize_12;
  double get fontSize_14;
  double get fontSize_16;
  double get fontSize_18;
  double get fontSize_38;

  //duration
  int get duration_100;

  //delegete
  double get deChildAspectRatio;
}
