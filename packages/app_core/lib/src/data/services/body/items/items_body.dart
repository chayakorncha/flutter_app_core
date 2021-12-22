import 'package:app_core/app_core.dart';

part 'items_body.g.dart';

@JsonSerializable()
class ItemsBody {
  @JsonKey(name: 'Take')
  final int? take;

  @JsonKey(name: 'Skip')
  final int? skip;

  @JsonKey(name: 'Point')
  final bool? point;

  @JsonKey(name: 'CustomerId')
  final String? customerId;

  @JsonKey(name: 'SaleUnit')
  final String? saleUnit;

  @JsonKey(name: 'SearchText')
  final String? searchText;

  @JsonKey(name: 'productCode')
  final String? productCode;

  @JsonKey(name: 'productType')
  final String? productType;

  @JsonKey(name: 'mattype')
  final String? mattype;

  @JsonKey(name: 'hierarchy1')
  final String? hierarchy1;

  @JsonKey(name: 'hierarchy2')
  final String? hierarchy2;

  @JsonKey(name: 'hierarchy3')
  final String? hierarchy3;

  @JsonKey(name: 'hierarchy4')
  final String? hierarchy4;

  @JsonKey(name: 'hierarchy5')
  final String? hierarchy5;

  @JsonKey(name: 'onlyPromotionProduct')
  final bool? onlyPromotionProduct;

  @JsonKey(name: 'barcode')
  final String? barcode;

  @JsonKey(name: 'sortByPrice')
  final String? sortByPrice;

  @JsonKey(name: 'saleUnits')
  final List<String>? saleUnits;

  @JsonKey(name: 'productIds')
  final List<String>? productIds;

  @JsonKey(name: 'hierarchy1Ids')
  final List<String>? hierarchy1Ids;

  @JsonKey(name: 'types')
  final List<String>? types;

  ItemsBody({
    this.productCode,
    this.take,
    this.skip,
    this.point,
    this.mattype,
    this.productType,
    this.searchText,
    this.hierarchy1,
    this.hierarchy2,
    this.hierarchy3,
    this.hierarchy4,
    this.hierarchy5,
    this.customerId,
    this.saleUnit,
    this.onlyPromotionProduct,
    this.barcode,
    this.sortByPrice,
    this.saleUnits,
    this.productIds,
    this.hierarchy1Ids,
    this.types,
  });

  ItemsBody copyWith({
    String? productCode,
    int? take,
    int? skip,
    bool? point,
    String? mattype,
    String? productType,
    String? searchText,
    String? hierarchy1,
    String? hierarchy2,
    String? hierarchy3,
    String? hierarchy4,
    String? hierarchy5,
    String? customerId,
    String? saleUnit,
    bool? onlyPromotionProduct,
    String? barcode,
    String? sortByPrice,
    List<String>? saleUnits,
    List<String>? productIds,
    List<String>? hierarchy1Ids,
    List<String>? types,
  }) =>
      ItemsBody(
        productCode: productCode ?? this.productCode.orEmpty,
        take: take ?? this.take,
        skip: skip ?? this.skip,
        point: point ?? this.point ?? false,
        mattype: mattype ?? this.mattype.orEmpty,
        productType: productType ?? this.productType.orEmpty,
        searchText: searchText ?? this.searchText.orEmpty,
        hierarchy1: hierarchy1 ?? this.hierarchy1.orEmpty,
        hierarchy2: hierarchy2 ?? this.hierarchy2.orEmpty,
        hierarchy3: hierarchy3 ?? this.hierarchy3.orEmpty,
        hierarchy4: hierarchy4 ?? this.hierarchy4.orEmpty,
        hierarchy5: hierarchy5 ?? this.hierarchy5.orEmpty,
        customerId: customerId ?? this.customerId.orEmpty,
        saleUnit: saleUnit ?? this.saleUnit.orEmpty,
        onlyPromotionProduct:
            onlyPromotionProduct ?? this.onlyPromotionProduct ?? false,
        barcode: barcode ?? this.barcode.orEmpty,
        sortByPrice: sortByPrice ?? this.sortByPrice.orEmpty,
        saleUnits: saleUnits ?? this.saleUnits.orEmpty,
        productIds: productIds ?? this.productIds.orEmpty,
        hierarchy1Ids: hierarchy1Ids ?? this.hierarchy1Ids.orEmpty,
        types: types ?? this.types.orEmpty,
      );

  ItemsBody first({
    required String customerId,
    required String saleUnit,
    String searchText = '',
  }) =>
      copyWith(
          take: 12,
          skip: 0,
          customerId: customerId,
          saleUnit: saleUnit,
          searchText: searchText,
          point: false);

  ItemsBody next({
    int take = 12,
    int? skip,
    bool point = false,
  }) =>
      copyWith(
          take: take,
          skip: skip.orDefault(this.skip.orDefault(0)).plus(12),
          point: point);

  factory ItemsBody.fromJson(Map<String, dynamic> json) =>
      _$ItemsBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsBodyToJson(this);
}
