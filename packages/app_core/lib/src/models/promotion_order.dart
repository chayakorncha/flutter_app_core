import 'package:app_core/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'promotion_order.g.dart';

@JsonSerializable(explicitToJson: true)
class PromotionOrder {
  @JsonKey(name: "PromotionOrderFromCalculatedSubscription")
  late PromotionOrder? promotionOrderFromCalculatedSubscription;

  @JsonKey(name: "StatusText")
  late String? statusText;

  @JsonKey(name: "Order_List")
  dynamic orderList;

  @JsonKey(name: "ORDER_DETAIL")
  dynamic orderDetail;

  @JsonKey(name: "USERID")
  late String? userId;

  @JsonKey(name: "CUSTYPE")
  late String? customerType;

  @JsonKey(name: "STORE")
  late String? storeId;

  @JsonKey(name: "RESULT")
  late String? result;

  late List<dynamic> selectPromotionList = [];
  late List<dynamic> listOfPromotion = [];
  late List<dynamic> promotionFree = [];
  late List<dynamic> promotionDiscount = [];
  late List<dynamic> promotionDiscountOnTop = [];
  late List<dynamic> listOfPromotionFreeGroup = [];
  late List<Product> productcategoryDtos = [];
  late List<dynamic> promotionBOM = [];

  @JsonKey(name: "secondany_promotion")
  late String? secondaryPromotion;

  // @JsonKey(name: "GetFullResultOnCombinePromotion")
  // late bool getFullResultOnCombinePromotion;

  @JsonKey(name: "transportationfee")
  late List<dynamic> transportationFee;

  @JsonKey(name: "NotClearPromotion")
  late bool notClearPromotion;

  @JsonKey(name: "IsOrderSubscription")
  late bool isOrderSubscription;

  PromotionOrder(
      this.promotionOrderFromCalculatedSubscription, this.orderDetail);

  factory PromotionOrder.fromJson(Map<String, dynamic> json) =>
      _$PromotionOrderFromJson(json);
  Map<String, dynamic> toJson() => _$PromotionOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionFree {
  @JsonKey(name: "PMT_Code")
  late String? promotionCode;

  @JsonKey(name: "PMT_TYPE")
  late String? promotionType;

  @JsonKey(name: "PD_Code")
  late String? productCode;

  @JsonKey(name: "PD_Group")
  late String? productGroup;

  @JsonKey(name: "PD_Name")
  late String? productName;

  @JsonKey(name: "PD_Price")
  late double productPrice;

  @JsonKey(name: "Num_Free")
  late double numFree;

  @JsonKey(name: "Get_Free")
  late double getFree;

  @JsonKey(name: "Tmp_Num")
  late double tempNum;

  @JsonKey(name: "UOMCode")
  late String? uomCode;

  @JsonKey(name: "UOMRate")
  late int uomRate;

  @JsonKey(name: "UOMName")
  late String? uomName;

  @JsonKey(name: "Stock")
  late double stock;

  @JsonKey(name: "CollectionPoint")
  late String? collectionPoint;

  @JsonKey(name: "FromProductIdList")
  late String? fromProductIdList;

  @JsonKey(name: "TransactionRef")
  late String? transactionRef;

  @JsonKey(name: "CouponOnPromotionId")
  late String? couponOnPromotionId;

  @JsonKey(name: "ActivateDays")
  late String? activateDays;

  @JsonKey(name: "Shipping_Condition")
  late String? shippingCondition;

  PromotionFree(this.promotionCode, this.productCode);

  factory PromotionFree.fromJson(Map<String, dynamic> json) =>
      _$PromotionFreeFromJson(json);
  Map<String, dynamic> toJson() => _$PromotionFreeToJson(this);
}
