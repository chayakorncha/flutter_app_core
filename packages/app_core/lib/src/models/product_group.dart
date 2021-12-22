import 'package:app_core/app_core.dart';

part 'product_group.g.dart';

@JsonSerializable()
class ProductGroup {
  @JsonKey(name: 'GroupCode')
  final String? groupCode;

  @JsonKey(name: 'Description')
  final String? description;

  @JsonKey(name: 'LogoImage')
  final String? logoImage;

  @JsonKey(name: 'BannerImage')
  final String? bannerImage;

  ProductGroup({
    required this.groupCode,
    required this.description,
    required this.logoImage,
    required this.bannerImage,
  });

  ProductGroup copyWith({
    String? groupCode,
    String? description,
    String? logoImage,
    String? bannerImage,
  }) =>
      ProductGroup(
        groupCode: groupCode ?? this.groupCode.orEmpty,
        description: description ?? this.description.orEmpty,
        logoImage: logoImage ?? this.logoImage.orEmpty,
        bannerImage: bannerImage ?? this.bannerImage.orEmpty,
      );

  factory ProductGroup.fromJson(Map<String, dynamic> json) =>
      _$ProductGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGroupToJson(this);
}
