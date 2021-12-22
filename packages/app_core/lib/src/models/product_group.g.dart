// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductGroup _$ProductGroupFromJson(Map<String, dynamic> json) => ProductGroup(
      groupCode: json['GroupCode'] as String?,
      description: json['Description'] as String?,
      logoImage: json['LogoImage'] as String?,
      bannerImage: json['BannerImage'] as String?,
    );

Map<String, dynamic> _$ProductGroupToJson(ProductGroup instance) =>
    <String, dynamic>{
      'GroupCode': instance.groupCode,
      'Description': instance.description,
      'LogoImage': instance.logoImage,
      'BannerImage': instance.bannerImage,
    };
