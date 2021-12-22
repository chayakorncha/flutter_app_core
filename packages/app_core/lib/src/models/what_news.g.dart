// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'what_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhatNews _$WhatNewsFromJson(Map<String, dynamic> json) => WhatNews(
      statusText: json['statusText'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ResultWhatNews.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WhatNewsToJson(WhatNews instance) => <String, dynamic>{
      'statusText': instance.statusText,
      'result': instance.result?.map((e) => e.toJson()).toList(),
    };

ResultWhatNews _$ResultWhatNewsFromJson(Map<String, dynamic> json) =>
    ResultWhatNews(
      code: json['Code'] as String?,
      subject: json['Subject'] as String?,
      remark: json['Remark'] as String?,
      newsUrl: json['NewsUrl'] as String?,
      newsType: json['NewsType'] as String?,
      reasonCode: json['ReasonCode'] as String?,
      newsGuidFile: json['NewsGUIDFile'] as String?,
      yyyymmddUpdated: json['YYYYMMDDUpdated'] as String?,
      hhmmUpdated: json['HHMMUpdated'] as String?,
      publishBy: json['PublishBy'] as String?,
      flagEnabled: json['FlagEnabled'] as String?,
      dateFrom: json['DateFrom'] as String?,
      dateTo: json['DateTo'] as String?,
      dcList: json['DCList'] as String?,
      custTypeList: json['CustTypeList'] as String?,
      productList: json['ProductList'] as String?,
      newsPicture: json['NewsPicture'] as String?,
      salesGroupList: json['SalesGroupList'] as String?,
      bannerLink: json['banner_link'] as String?,
      bannerImage: json['BannerImage'] as String?,
      newtype: json['newtype'] as String?,
      reason: json['REASON'] as String?,
    );

Map<String, dynamic> _$ResultWhatNewsToJson(ResultWhatNews instance) =>
    <String, dynamic>{
      'Code': instance.code,
      'Subject': instance.subject,
      'Remark': instance.remark,
      'NewsUrl': instance.newsUrl,
      'NewsType': instance.newsType,
      'ReasonCode': instance.reasonCode,
      'NewsGUIDFile': instance.newsGuidFile,
      'YYYYMMDDUpdated': instance.yyyymmddUpdated,
      'HHMMUpdated': instance.hhmmUpdated,
      'PublishBy': instance.publishBy,
      'FlagEnabled': instance.flagEnabled,
      'DateFrom': instance.dateFrom,
      'DateTo': instance.dateTo,
      'DCList': instance.dcList,
      'CustTypeList': instance.custTypeList,
      'ProductList': instance.productList,
      'NewsPicture': instance.newsPicture,
      'SalesGroupList': instance.salesGroupList,
      'banner_link': instance.bannerLink,
      'BannerImage': instance.bannerImage,
      'newtype': instance.newtype,
      'REASON': instance.reason,
    };
