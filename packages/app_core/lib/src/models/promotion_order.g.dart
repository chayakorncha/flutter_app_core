// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionOrder _$PromotionOrderFromJson(Map<String, dynamic> json) =>
    PromotionOrder(
      json['PromotionOrderFromCalculatedSubscription'] == null
          ? null
          : PromotionOrder.fromJson(
              json['PromotionOrderFromCalculatedSubscription']
                  as Map<String, dynamic>),
      json['ORDER_DETAIL'],
    )
      ..statusText = json['StatusText'] as String?
      ..orderList = json['Order_List']
      ..userId = json['USERID'] as String?
      ..customerType = json['CUSTYPE'] as String?
      ..storeId = json['STORE'] as String?
      ..result = json['RESULT'] as String?
      ..selectPromotionList = json['selectPromotionList'] as List<dynamic>
      ..listOfPromotion = json['listOfPromotion'] as List<dynamic>
      ..promotionFree = json['promotionFree'] as List<dynamic>
      ..promotionDiscount = json['promotionDiscount'] as List<dynamic>
      ..promotionDiscountOnTop = json['promotionDiscountOnTop'] as List<dynamic>
      ..listOfPromotionFreeGroup =
          json['listOfPromotionFreeGroup'] as List<dynamic>
      ..productcategoryDtos = (json['productcategoryDtos'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList()
      ..promotionBOM = json['promotionBOM'] as List<dynamic>
      ..secondaryPromotion = json['secondany_promotion'] as String?
      ..transportationFee = json['transportationfee'] as List<dynamic>
      ..notClearPromotion = json['NotClearPromotion'] as bool
      ..isOrderSubscription = json['IsOrderSubscription'] as bool;

Map<String, dynamic> _$PromotionOrderToJson(PromotionOrder instance) =>
    <String, dynamic>{
      'PromotionOrderFromCalculatedSubscription':
          instance.promotionOrderFromCalculatedSubscription?.toJson(),
      'StatusText': instance.statusText,
      'Order_List': instance.orderList,
      'ORDER_DETAIL': instance.orderDetail,
      'USERID': instance.userId,
      'CUSTYPE': instance.customerType,
      'STORE': instance.storeId,
      'RESULT': instance.result,
      'selectPromotionList': instance.selectPromotionList,
      'listOfPromotion': instance.listOfPromotion,
      'promotionFree': instance.promotionFree,
      'promotionDiscount': instance.promotionDiscount,
      'promotionDiscountOnTop': instance.promotionDiscountOnTop,
      'listOfPromotionFreeGroup': instance.listOfPromotionFreeGroup,
      'productcategoryDtos':
          instance.productcategoryDtos.map((e) => e.toJson()).toList(),
      'promotionBOM': instance.promotionBOM,
      'secondany_promotion': instance.secondaryPromotion,
      'transportationfee': instance.transportationFee,
      'NotClearPromotion': instance.notClearPromotion,
      'IsOrderSubscription': instance.isOrderSubscription,
    };

PromotionFree _$PromotionFreeFromJson(Map<String, dynamic> json) =>
    PromotionFree(
      json['PMT_Code'] as String?,
      json['PD_Code'] as String?,
    )
      ..promotionType = json['PMT_TYPE'] as String?
      ..productGroup = json['PD_Group'] as String?
      ..productName = json['PD_Name'] as String?
      ..productPrice = (json['PD_Price'] as num).toDouble()
      ..numFree = (json['Num_Free'] as num).toDouble()
      ..getFree = (json['Get_Free'] as num).toDouble()
      ..tempNum = (json['Tmp_Num'] as num).toDouble()
      ..uomCode = json['UOMCode'] as String?
      ..uomRate = json['UOMRate'] as int
      ..uomName = json['UOMName'] as String?
      ..stock = (json['Stock'] as num).toDouble()
      ..collectionPoint = json['CollectionPoint'] as String?
      ..fromProductIdList = json['FromProductIdList'] as String?
      ..transactionRef = json['TransactionRef'] as String?
      ..couponOnPromotionId = json['CouponOnPromotionId'] as String?
      ..activateDays = json['ActivateDays'] as String?
      ..shippingCondition = json['Shipping_Condition'] as String?;

Map<String, dynamic> _$PromotionFreeToJson(PromotionFree instance) =>
    <String, dynamic>{
      'PMT_Code': instance.promotionCode,
      'PMT_TYPE': instance.promotionType,
      'PD_Code': instance.productCode,
      'PD_Group': instance.productGroup,
      'PD_Name': instance.productName,
      'PD_Price': instance.productPrice,
      'Num_Free': instance.numFree,
      'Get_Free': instance.getFree,
      'Tmp_Num': instance.tempNum,
      'UOMCode': instance.uomCode,
      'UOMRate': instance.uomRate,
      'UOMName': instance.uomName,
      'Stock': instance.stock,
      'CollectionPoint': instance.collectionPoint,
      'FromProductIdList': instance.fromProductIdList,
      'TransactionRef': instance.transactionRef,
      'CouponOnPromotionId': instance.couponOnPromotionId,
      'ActivateDays': instance.activateDays,
      'Shipping_Condition': instance.shippingCondition,
    };
