// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsBody _$ItemsBodyFromJson(Map<String, dynamic> json) => ItemsBody(
      productCode: json['productCode'] as String?,
      take: json['Take'] as int?,
      skip: json['Skip'] as int?,
      point: json['Point'] as bool?,
      mattype: json['mattype'] as String?,
      productType: json['productType'] as String?,
      searchText: json['SearchText'] as String?,
      hierarchy1: json['hierarchy1'] as String?,
      hierarchy2: json['hierarchy2'] as String?,
      hierarchy3: json['hierarchy3'] as String?,
      hierarchy4: json['hierarchy4'] as String?,
      hierarchy5: json['hierarchy5'] as String?,
      customerId: json['CustomerId'] as String?,
      saleUnit: json['SaleUnit'] as String?,
      onlyPromotionProduct: json['onlyPromotionProduct'] as bool?,
      barcode: json['barcode'] as String?,
      sortByPrice: json['sortByPrice'] as String?,
      saleUnits: (json['saleUnits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      productIds: (json['productIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hierarchy1Ids: (json['hierarchy1Ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ItemsBodyToJson(ItemsBody instance) => <String, dynamic>{
      'Take': instance.take,
      'Skip': instance.skip,
      'Point': instance.point,
      'CustomerId': instance.customerId,
      'SaleUnit': instance.saleUnit,
      'SearchText': instance.searchText,
      'productCode': instance.productCode,
      'productType': instance.productType,
      'mattype': instance.mattype,
      'hierarchy1': instance.hierarchy1,
      'hierarchy2': instance.hierarchy2,
      'hierarchy3': instance.hierarchy3,
      'hierarchy4': instance.hierarchy4,
      'hierarchy5': instance.hierarchy5,
      'onlyPromotionProduct': instance.onlyPromotionProduct,
      'barcode': instance.barcode,
      'sortByPrice': instance.sortByPrice,
      'saleUnits': instance.saleUnits,
      'productIds': instance.productIds,
      'hierarchy1Ids': instance.hierarchy1Ids,
      'types': instance.types,
    };
