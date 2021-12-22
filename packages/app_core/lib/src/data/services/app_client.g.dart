// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _AppClient implements AppClient {
  _AppClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Customer> authen() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Customer>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'authen/login/guest',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Customer.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Product>> fetchProducts(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Product>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/products/items',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Product.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<Product>> fetchProductStock(productCodes) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'productCodes': productCodes};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Product>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'api/products/stock/items',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Product.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<CustomerLogin> login(username, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'username': username, 'password': password};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CustomerLogin>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'authen/Login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CustomerLogin.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WhatNews> fetchWhatNews(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<WhatNews>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'get_master_data/GET_WHATSNEW',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WhatNews.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<ProductGroup>> fetchProductGroup([code = '']) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'code': code};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ProductGroup>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'get_master_data/GET_PRODUCT_GROUP',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ProductGroup.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<ProductGroup>> fetchProductBrand([code = '']) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'code': code};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ProductGroup>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'get_master_data/GET_PRODUCT_BRAND',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ProductGroup.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Province> getMasterProvince() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Province>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'get_master_data/GET_PROVINCE',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Province.fromJson(_result.data!);
    return value;
  }

  @override
  Future<District> getMasterDistrict(provinceId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'provinceID': provinceId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<District>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'get_master_data/GET_DISTRICT',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = District.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
