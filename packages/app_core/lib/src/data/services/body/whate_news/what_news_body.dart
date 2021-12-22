import 'package:json_annotation/json_annotation.dart';
import 'package:app_core/src/extensions/app_extensions.dart';

part 'what_news_body.g.dart';

@JsonSerializable()
class WhatNewsBody {
  final List<String>? codeList;
  final List<String>? reasonCodeList;
  final String? code;
  final String? newsType;
  final bool? usePeriodDate;
  final String? activeStatus;
  final int? reasonId;

  WhatNewsBody({
    this.codeList,
    this.reasonCodeList,
    this.code,
    this.newsType,
    this.usePeriodDate,
    this.activeStatus,
    this.reasonId,
  });

  WhatNewsBody copyWith({
    List<String>? codeList,
    List<String>? reasonCodeList,
    String? code,
    String? newsType,
    bool? usePeriodDate,
    String? activeStatus,
    int? reasonId,
  }) =>
      WhatNewsBody(
        codeList: codeList ?? this.codeList.orEmpty,
        reasonCodeList: reasonCodeList ?? this.reasonCodeList.orEmpty,
        code: code ?? this.code.orEmpty,
        newsType: newsType ?? this.newsType.orEmpty,
        usePeriodDate: usePeriodDate ?? this.usePeriodDate ?? false,
        activeStatus: activeStatus ?? this.activeStatus.orEmpty,
        reasonId: reasonId ?? this.reasonId ?? 0,
      );

  WhatNewsBody smallBody({
    String newsType = 'B',
    bool usePeriodDate = true,
    String activeStatus = 'Y',
    int reasonID = 0,
  }) =>
      copyWith(
          newsType: newsType,
          usePeriodDate: usePeriodDate,
          activeStatus: activeStatus,
          reasonId: reasonID);

  factory WhatNewsBody.fromJson(Map<String, dynamic> json) =>
      _$WhatNewsBodyFromJson(json);
  Map<String, dynamic> toJson() => _$WhatNewsBodyToJson(this);
}
