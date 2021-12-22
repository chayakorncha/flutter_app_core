import 'package:dio/dio.dart';
import 'package:app_core/app_core.dart';
import 'package:app_core/src/models/customer.dart';
import 'package:app_core/src/models/customer_login.dart';
import 'package:app_core/src/models/district.dart';
import 'package:app_core/src/models/product_group.dart';
import 'package:app_core/src/models/province.dart';
import 'package:app_core/src/models/what_news.dart';
import 'package:app_core/src/data/services/body/items/items_body.dart';
import 'package:app_core/src/data/services/body/whate_news/what_news_body.dart';
import 'package:retrofit/retrofit.dart';

part 'app_client.g.dart';

/// DONG 26 10 2021
///
/// class สำหรับจัดการกับการเชื่อมต่อกับ HTTP ผ่าน [Dio] แต่ใช้ lib Retrofit มาช่วยจัดการ
/// กับ HTTP method ต่างๆ GET, PUT, POST, PATCH, DELETE & Static HEADER โดยกำหนดผ่าน
/// annotation ที่ Retrofit มีให้ ให้เรียกใช้งานได้สะดวกขึ้น
///
///
/// Note: เมื่อมีการแก้ไข ให้ run command นี้ใน terminal ด้วย
///
/// flutter pub run build_runner build --delete-conflicting-outputs
@RestApi()
abstract class AppClient {
  static final _AppClient _instance = _AppClient(
    Dio(
      BaseOptions(
        contentType: "application/json",
        baseUrl: "",
        connectTimeout: 2.minutesToMillis,
        sendTimeout: 2.minutesToMillis,
        receiveTimeout: 3.minutesToMillis,
      ),
    ),
  );

  factory AppClient.init({
    String? newBaseUrl,
    String? jwt,
    Interceptor? interceptor,
    BaseOptions? baseOptions,
  }) {
    newBaseUrl?.let((it) => _instance.baseUrl = it);
    jwt?.let(
      (it) => _instance._dio.options.headers
          .addAll({'Authorization': 'Bearer $it'}),
    );
    baseOptions?.let((option) => _instance._dio.options = option);
    return _instance;
  }

  factory AppClient.instance({String? newBaseUrl}) =>
      // _instance..baseUrl = newBaseUrl ?? _instance.baseUrl;
      _instance.let((it) {
        it.baseUrl = newBaseUrl.ifEmpty(_instance.baseUrl.orEmpty);
        return it;
      });

  /// ใช้ดึง User guest ลงมาที่ local ในกรณียังไม่ได้สมัครสมาชิกหรือไม่ได้ login
  @GET('authen/login/guest')
  Future<Customer> authen();

  /// Fetch Items จาก Service
  @POST('api/products/items')
  Future<List<Product>> fetchProducts(@Body() ItemsBody body);

  /// Fetch Detail Stock ของ ProductCode นั้นๆ
  @POST('api/products/stock/items')
  Future<List<Product>> fetchProductStock(
    @Field('productCodes') List<String> productCodes,
  );

  /// ยิงเพื่อ Login
  @POST('authen/Login')
  Future<CustomerLogin> login(
    @Field('username') String username,
    @Field('password') String password,
  );

  /// fetch whatsnew ในลง
  @POST('get_master_data/GET_WHATSNEW')
  Future<WhatNews> fetchWhatNews(@Body() WhatNewsBody body);

  /// fetch Product group ในลง
  @POST('get_master_data/GET_PRODUCT_GROUP')
  Future<List<ProductGroup>> fetchProductGroup([
    @Field('code') String code = '',
  ]);

  /// fetch Product brand
  @POST('get_master_data/GET_PRODUCT_BRAND')
  Future<List<ProductGroup>> fetchProductBrand([
    @Field('code') String code = '',
  ]);

  /// fetch Province
  @POST('get_master_data/GET_PROVINCE')
  Future<Province> getMasterProvince();

  /// fetch District
  @POST('get_master_data/GET_DISTRICT')
  Future<District> getMasterDistrict(
    @Field('provinceID') String provinceId,
  );
}
