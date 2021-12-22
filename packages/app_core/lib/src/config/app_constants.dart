import 'package:flutter/foundation.dart';
//*********************************************
// const value / key
//*********************************************

// authen
const String userKey = 'user';
const String passwordKey = 'password';
const String jwtKey = 'jwt_key';

//transaction
const String orderKey = 'order';
const String orderDetailKey = 'order_detail';
const String basketKey = 'basket';

// เช็คว่า run ด้วย Browser หรือเปล่า จะใช้ร่วมกับ package DevicePreview
const bool openDevicePreview = kIsWeb && kDebugMode;
