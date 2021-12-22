// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'what_news_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WhatNewsBody _$WhatNewsBodyFromJson(Map<String, dynamic> json) => WhatNewsBody(
      codeList: (json['codeList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reasonCodeList: (json['reasonCodeList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      code: json['code'] as String?,
      newsType: json['newsType'] as String?,
      usePeriodDate: json['usePeriodDate'] as bool?,
      activeStatus: json['activeStatus'] as String?,
      reasonId: json['reasonId'] as int?,
    );

Map<String, dynamic> _$WhatNewsBodyToJson(WhatNewsBody instance) =>
    <String, dynamic>{
      'codeList': instance.codeList,
      'reasonCodeList': instance.reasonCodeList,
      'code': instance.code,
      'newsType': instance.newsType,
      'usePeriodDate': instance.usePeriodDate,
      'activeStatus': instance.activeStatus,
      'reasonId': instance.reasonId,
    };
