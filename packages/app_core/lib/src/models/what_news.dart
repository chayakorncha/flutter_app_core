import 'package:json_annotation/json_annotation.dart';

part 'what_news.g.dart';

@JsonSerializable(explicitToJson: true)
class WhatNews {
  final String? statusText;
  final List<ResultWhatNews>? result;

  WhatNews({
    this.statusText,
    this.result,
  });

  WhatNews copyWith({
    String? statusText,
    List<ResultWhatNews>? result,
  }) =>
      WhatNews(
        statusText: statusText ?? this.statusText,
        result: result ?? this.result,
      );

  factory WhatNews.fromJson(Map<String, dynamic> json) =>
      _$WhatNewsFromJson(json);

  Map<String, dynamic> toJson() => _$WhatNewsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResultWhatNews {
  @JsonKey(name: 'Code')
  final String? code;

  @JsonKey(name: 'Subject')
  final String? subject;

  @JsonKey(name: 'Remark')
  final String? remark;

  @JsonKey(name: 'NewsUrl')
  final String? newsUrl;

  @JsonKey(name: 'NewsType')
  final String? newsType;

  @JsonKey(name: 'ReasonCode')
  final String? reasonCode;

  @JsonKey(name: 'NewsGUIDFile')
  final String? newsGuidFile;

  @JsonKey(name: 'YYYYMMDDUpdated')
  final String? yyyymmddUpdated;

  @JsonKey(name: 'HHMMUpdated')
  final String? hhmmUpdated;

  @JsonKey(name: 'PublishBy')
  final String? publishBy;

  @JsonKey(name: 'FlagEnabled')
  final String? flagEnabled;

  @JsonKey(name: 'DateFrom')
  final String? dateFrom;

  @JsonKey(name: 'DateTo')
  final String? dateTo;

  @JsonKey(name: 'DCList')
  final String? dcList;

  @JsonKey(name: 'CustTypeList')
  final String? custTypeList;

  @JsonKey(name: 'ProductList')
  final String? productList;

  @JsonKey(name: 'NewsPicture')
  final String? newsPicture;

  @JsonKey(name: 'SalesGroupList')
  final String? salesGroupList;

  @JsonKey(name: 'banner_link')
  final String? bannerLink;

  @JsonKey(name: 'BannerImage')
  final String? bannerImage;

  @JsonKey(name: 'newtype')
  final String? newtype;

  @JsonKey(name: 'REASON')
  final String? reason;

  ResultWhatNews({
    this.code,
    this.subject,
    this.remark,
    this.newsUrl,
    this.newsType,
    this.reasonCode,
    this.newsGuidFile,
    this.yyyymmddUpdated,
    this.hhmmUpdated,
    this.publishBy,
    this.flagEnabled,
    this.dateFrom,
    this.dateTo,
    this.dcList,
    this.custTypeList,
    this.productList,
    this.newsPicture,
    this.salesGroupList,
    this.bannerLink,
    this.bannerImage,
    this.newtype,
    this.reason,
  });

    factory ResultWhatNews.fromJson(Map<String, dynamic> json) =>
      _$ResultWhatNewsFromJson(json);

  Map<String, dynamic> toJson() => _$ResultWhatNewsToJson(this);
}
