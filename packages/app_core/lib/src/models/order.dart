import 'package:app_core/src/models/product.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderList {
  @JsonKey(name: "OrderID")
  late String orderId;

  @JsonKey(name: "SaleUnit")
  late String saleUnit;

  @JsonKey(name: "_id")
  late int id;

  @JsonKey(name: "OrderDate")
  late String? orderDate;

  @JsonKey(name: "Canceled")
  late String? canceled;

  @JsonKey(name: "DocumentID")
  late String? documentId;

  @JsonKey(name: "CompanyID")
  late String? companyId;

  @JsonKey(name: "NDocumentID")
  late String? nDocumentId;

  @JsonKey(name: "NCompanyID")
  late String? nCompanyId;

  @JsonKey(name: "Customer_Id")
  late String? customerId;

  @JsonKey(name: "Customer_Name")
  late String? customerName;

  @JsonKey(name: "VAT")
  late String? vat;

  @JsonKey(name: "Total")
  late double? total;

  @JsonKey(name: "NTotal")
  late double? nTotal;

  @JsonKey(name: "Money")
  late double? money;

  @JsonKey(name: "NMoney")
  late double? nMoney;

  @JsonKey(name: "Signature")
  late String? signature;

  @JsonKey(name: "ApproverStatus")
  late String? approverStatus;

  @JsonKey(name: "VATRATE")
  late double? vatRate;

  @JsonKey(name: "VATVALUE")
  late double? vatValue;

  @JsonKey(name: "NVATVALUE")
  late double? nVatValue;

  @JsonKey(name: "BranchCode")
  late String? branchCode;

  @JsonKey(name: "RegionCode")
  late String? regionCode;

  @JsonKey(name: "AreaCode")
  late String? areaCode;

  @JsonKey(name: "CompanyCode")
  late String? companyCode;

  @JsonKey(name: "PRICELEVEL")
  late String? pricelevel;

  @JsonKey(name: "WarehouseID")
  late String? warehouseId;

  @JsonKey(name: "SaleCode")
  late String? saleCode;

  @JsonKey(name: "ShelfNo")
  late String? shelfNo;

  @JsonKey(name: "CarLicenseID")
  late String? carLicenseId;

  @JsonKey(name: "ORDERTYPE")
  String? orderType;

  @JsonKey(name: "CUSTOMER_ADDRESS")
  double? customerAddress;

  @JsonKey(name: "CreditMoney_Num")
  double? creditMoneyNum;

  @JsonKey(name: "CreditNo_Num")
  String? creditNoNum;

  @JsonKey(name: "CheckMoney_Num")
  String? checkMoneyNum;

  @JsonKey(name: "CheckNo_Num")
  String? checkNoNum;

  @JsonKey(name: "CheckDate_Num")
  String? checkDateNum;

  @JsonKey(name: "TransferMoney_Num")
  double? transferMoneyNum;

  @JsonKey(name: "TransferBank_Num")
  String? transferBankNum;

  @JsonKey(name: "TransferBankBook_Num")
  String? transferBankBookNum;

  @JsonKey(name: "TransferDate_Num")
  String? transferDateNum;

  @JsonKey(name: "CashMoney_Num")
  double? cashMoneyNum;

  @JsonKey(name: "CreditMoney_Pom")
  String? creditMoneyPom;

  @JsonKey(name: "CreditNo_Pom")
  String? creditNoPom;

  @JsonKey(name: "CheckMoney_Pom")
  double? checkMoneyPom;

  @JsonKey(name: "CheckNo_Pom")
  String? checkNoPom;

  @JsonKey(name: "CheckDate_Pom")
  String? checkDatePom;

  @JsonKey(name: "TransferMoney_Pom")
  double? transferMoneyPom;

  @JsonKey(name: "TransferBank_Pom")
  String? transferBankPom;

  @JsonKey(name: "TransferBankBook_Pom")
  String? transferBankBookPom;

  @JsonKey(name: "TransferDate_Pom")
  String? transferDatePom;

  @JsonKey(name: "CashMoney_Pom")
  double? cashMoneyPom;

  @JsonKey(name: "SaleType")
  String? saleType;

  @JsonKey(name: "OPTIONAL1")
  String? optional1;

  @JsonKey(name: "OPTIONAL2")
  String? optional2;

  @JsonKey(name: "OPTIONAL3")
  String? optional3;

  @JsonKey(name: "OPTIONAL4")
  String? optional4;

  @JsonKey(name: "OPTIONAL5")
  String? optional5;

  @JsonKey(name: "DISCOUNT_RATE")
  String? discountRate;

  @JsonKey(name: "DISCOUNT_AMOUNT")
  double? discountAmount;

  @JsonKey(name: "DELIVERYDATE")
  String? deliverydate;

  @JsonKey(name: "RefNo")
  String? refNo;

  @JsonKey(name: "TFLAG")
  String? tflag;

  @JsonKey(name: "Remark")
  String? remark;

  @JsonKey(name: "Remark2")
  String? remark2;

  @JsonKey(name: "Remark3")
  String? remark3;

  @JsonKey(name: "Remark4")
  String? remark4;

  @JsonKey(name: "WH_Amount")
  double? whAmount;

  @JsonKey(name: "Change_VALUE")
  double? changeValue;

  @JsonKey(name: "Receive_VALUE")
  double? receiveValue;

  @JsonKey(name: "Table_ID")
  String? tableId;

  @JsonKey(name: "Service_Charge")
  String? serviceCharge;

  @JsonKey(name: "Money_Deposit")
  double? moneyDeposit;

  @JsonKey(name: "Money_VALUE")
  double? moneyValue;

  @JsonKey(name: "Print_Invoice")
  String? printInvoice;

  @JsonKey(name: "WH_Rate")
  String? whRate;

  @JsonKey(name: "TaxVALUE")
  double? taxValue;

  @JsonKey(name: "MONEY_Adj")
  double? moneyAdj;

  @JsonKey(name: "OrderTime")
  String? orderTime;

  @JsonKey(name: "CreateSalesOrder")
  double? createSalesOrder;

  @JsonKey(name: "DocState")
  String? docState;

  @JsonKey(name: "SHIPTO")
  String? shipto;

  @JsonKey(name: "PONO")
  String? pono;

  @JsonKey(name: "REFNO2")
  String? refno2;

  @JsonKey(name: "REFNO3")
  String? refno3;

  @JsonKey(name: "BILLTO")
  String? billto;

  @JsonKey(name: "From_WarehouseID")
  String? fromWarehouseId;

  @JsonKey(name: "From_ShelfNo")
  String? fromShelfNo;

  @JsonKey(name: "DeliveryRouteID")
  String? deliveryRouteId;

  @JsonKey(name: "QuantityNotSend")
  double? quantityNotSend;

  @JsonKey(name: "Updated_By")
  String? updatedBy;

  @JsonKey(name: "APPROVED_DATE")
  String? approvedDate;

  @JsonKey(name: "APPROVED_TIME")
  String? approvedTime;

  @JsonKey(name: "APPROVED_BY")
  String? approvedBy;

  @JsonKey(name: "PromotionCode")
  String? promotionCode;

  @JsonKey(name: "PromotionCode1")
  String? promotionCode1;

  @JsonKey(name: "PromotionCode2")
  String? promotionCode2;

  @JsonKey(name: "PromotionCode3")
  String? promotionCode3;

  @JsonKey(name: "PromotionCode4")
  String? promotionCode4;

  @JsonKey(name: "PromotionCode5")
  String? promotionCode5;

  @JsonKey(name: "OriginalDiscountRate")
  String? originalDiscountRate;

  @JsonKey(name: "OriginalDiscount")
  double? originalDiscount;

  @JsonKey(name: "CurrencyCode")
  String? currencyCode;

  @JsonKey(name: "Total_Remain")
  double? totalRemain;

  @JsonKey(name: "CNCash")
  String? cnCash;

  @JsonKey(name: "BCTransferDate")
  String? bcTransferDate;

  @JsonKey(name: "PODDate")
  String? podDate;

  @JsonKey(name: "PODTime")
  String? podTime;

  @JsonKey(name: "REF_1")
  String? ref1;

  @JsonKey(name: "REF_2")
  String? ref2;

  @JsonKey(name: "REF_3")
  String? ref3;

  @JsonKey(name: "REF_4")
  String? ref4;

  @JsonKey(name: "REF_5")
  String? ref5;

  @JsonKey(name: "REF_6")
  String? ref6;

  @JsonKey(name: "REF_7")
  String? ref7;

  @JsonKey(name: "REF_8")
  String? ref8;

  @JsonKey(name: "REF_9")
  String? ref9;

  @JsonKey(name: "REF_10")
  String? ref10;

  @JsonKey(name: "REF_11")
  String? ref11;

  @JsonKey(name: "REF_12")
  String? ref12;

  @JsonKey(name: "REF_13")
  String? ref13;

  @JsonKey(name: "REF_14")
  String? ref14;

  @JsonKey(name: "REF_15")
  String? ref15;

  @JsonKey(name: "ApproveList")
  String? approveList;

  @JsonKey(name: "DiscountRate1")
  String? discountRate1;

  @JsonKey(name: "DiscountAmount1")
  double? discountAmount1;

  @JsonKey(name: "DiscountRate2")
  String? discountRate2;

  @JsonKey(name: "DiscountAmount2")
  double? discountAmount2;

  @JsonKey(name: "DiscountRate3")
  String? discountRate3;

  @JsonKey(name: "DiscountAmount3")
  double? discountAmount3;

  @JsonKey(name: "VMICode")
  String? vmiCode;

  @JsonKey(name: "Other")
  String? other;

  @JsonKey(name: "OPT")
  String? opt;

  @JsonKey(name: "CREATE_BY")
  String? createBy;

  @JsonKey(name: "CREATE_DATE")
  String? createDate;

  @JsonKey(name: "UPDATE_BY")
  String? updateBy;

  @JsonKey(name: "UPDATE_DATE")
  String? updateDate;

  @JsonKey(name: "DeliveryTime")
  String? deliveryTime;

  @JsonKey(name: "shipment_code")
  String? shipmentCode;

  @JsonKey(name: "PaymentType")
  String? paymentType;

  @JsonKey(name: "SerialNumber")
  String? serialNumber;

  @JsonKey(name: "CardType")
  String? cardType;

  @JsonKey(name: "ManualDiscountRate")
  String? manualDiscountRate;

  @JsonKey(name: "ManualDiscount")
  double? manualDiscount;

  @JsonKey(name: "ManualDiscountShippingRate")
  String? manualDiscountShippingRate;

  @JsonKey(name: "ManualDiscountShipping")
  double? manualDiscountShipping;

  @JsonKey(name: "ManualDiscountKpiRate")
  String? manualDiscountKpiRate;

  @JsonKey(name: "ManualDiscountKpi")
  double? manualDiscountKpi;

  @JsonKey(name: "IsManualDiscount")
  String? isManualDiscount;

  @JsonKey(name: "cod_status")
  String? codStatus;

  @JsonKey(name: "prepay_id")
  String? prepayId;

  @JsonKey(name: "PromotionDN_Code1")
  String? promotionDnCode1;

  @JsonKey(name: "PromotionDN_Code2")
  String? promotionDnCode2;

  @JsonKey(name: "PromotionDN_Code3")
  String? promotionDnCode3;

  @JsonKey(name: "PromotionDN_Code4")
  String? promotionDnCode4;

  @JsonKey(name: "PromotionDN_Code5")
  String? promotionDnCode5;

  @JsonKey(name: "PromotionDN_Value1")
  double? promotionDnValue1;

  @JsonKey(name: "PromotionDN_Value2")
  double? promotionDnValue2;

  @JsonKey(name: "PromotionDN_Value3")
  double? promotionDnValue3;

  @JsonKey(name: "PromotionDN_Value4")
  double? promotionDnValue4;

  @JsonKey(name: "PromotionDN_Value5")
  double? promotionDnValue5;

  @JsonKey(name: "NeedTaxInvoice")
  String? needTaxInvoice;
  String? flagstep;
  String? emailstatus;
  String? field;

  @JsonKey(name: "SubscribeStartDate")
  String? subscribeStartDate;

  @JsonKey(name: "SubscribeUnitNumber")
  double? subscribeUnitNumber;

  @JsonKey(name: "SubscribeUnit")
  String? subscribeUnit;

  @JsonKey(name: "RefCenterID")
  String? refCenterId;

  @JsonKey(name: "RefOrderID")
  String? refOrderId;

  @JsonKey(name: "RefSaleUnit")
  String? refSaleUnit;

  @JsonKey(name: "SubscribeTotal")
  double? subscribeTotal;

  @JsonKey(name: "status_message")
  String? statusMessage;

  @JsonKey(name: "RefOnlinePaymentNO")
  String? refOnlinePaymentNo;

  @JsonKey(name: "OnlinePaymentSource")
  String? onlinePaymentSource;

  @JsonKey(name: "OnlinePaymentDate")
  String? onlinePaymentDate;

  @JsonKey(name: "DeliveryRoute")
  dynamic deliveryRoute;

  @JsonKey(name: "Invoices")
  List<OrderList>? invoices;

  @JsonKey(name: "OrderDetail")
  List<dynamic>? orderDetail;

  @JsonKey(name: "OrderBody")
  List<dynamic>? orderBody;

  @JsonKey(name: "ShippingAddress")
  dynamic shippingAddress;

  @JsonKey(name: "BillingAddress")
  dynamic billingAddress;

  @JsonKey(name: "Customer")
  dynamic customer;

  OrderList();

  factory OrderList.fromJson(Map<String, dynamic> json) =>
      _$OrderListFromJson(json);
  Map<String, dynamic> toJson() => _$OrderListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetail {
  @JsonKey(name: "OrderID")
  String? orderId;

  @JsonKey(name: "SaleUnit")
  String? saleUnit;

  @JsonKey(name: "_id")
  int? id;

  @JsonKey(name: "LOTNUMBER")
  String? lotNumber;

  @JsonKey(name: "OrderDate")
  String? orderDate;

  @JsonKey(name: "CategoryCode")
  String? categoryCode;

  @JsonKey(name: "No")
  late int no;

  @JsonKey(name: "ProductID")
  String? productId;

  @JsonKey(name: "ProductName")
  String? productName;

  @JsonKey(name: "Price")
  double? price;

  @JsonKey(name: "Discount")
  double? discount;

  @JsonKey(name: "QuantityMain")
  double? quantityMain;

  @JsonKey(name: "UnitMain")
  String? unitMain;

  @JsonKey(name: "UnitMainName")
  String? unitMainName;

  @JsonKey(name: "QuantityMinor")
  double? quantityMinor;

  @JsonKey(name: "UnitMinor")
  String? unitMinor;

  @JsonKey(name: "UnitMinorName")
  String? unitMinorName;

  @JsonKey(name: "ProductFree")
  String? productFree;

  @JsonKey(name: "QuantityFree")
  double? quantityFree;

  @JsonKey(name: "UnitFree")
  String? unitFree;

  @JsonKey(name: "UnitFreeName")
  String? unitFreeName;

  @JsonKey(name: "ProductMinorFree")
  String? productMinorFree;

  @JsonKey(name: "QuantityMinorFree")
  double? quantityMinorFree;

  @JsonKey(name: "UnitMinorFree")
  String? unitMinorFree;

  @JsonKey(name: "UnitMinorFreeName")
  String? unitMinorFreeName;

  @JsonKey(name: "Promotion_Code")
  String? promotionCode;

  @JsonKey(name: "Total")
  double? total;

  @JsonKey(name: "TransactionRef")
  String? transactionRef;

  @JsonKey(name: "Unit2Rate")
  double? unit2Rate;

  @JsonKey(name: "ProductType")
  String? productType;

  @JsonKey(name: "QuantityMinor3")
  double? quantityMinor3;

  @JsonKey(name: "UnitMinor3")
  String? unitMinor3;

  @JsonKey(name: "UnitMinorName3")
  String? unitMinorName3;

  @JsonKey(name: "QuantityMinorFree3")
  double? quantityMinorFree3;

  @JsonKey(name: "UnitMinorFree3")
  String? unitMinorFree3;

  @JsonKey(name: "UnitMinorFreeName3")
  String? unitMinorFreeName3;

  @JsonKey(name: "DISCOUNT_RATE")
  String? discountRate;

  @JsonKey(name: "Unit3Rate")
  double? unit3Rate;

  @JsonKey(name: "VAT")
  String? vat;

  @JsonKey(name: "TaxType")
  String? taxType;

  @JsonKey(name: "RETURN_REASON")
  String? returnReason;

  @JsonKey(name: "TFLAG")
  String? tflag;

  @JsonKey(name: "ORDERTYPE")
  String? orderType;

  @JsonKey(name: "TaxVALUE")
  double? taxValue;

  @JsonKey(name: "Count_QTY")
  double? countQty;

  @JsonKey(name: "Backlog")
  double? backlog;

  @JsonKey(name: "TotalQuantity")
  double? totalQuantity;

  @JsonKey(name: "Status")
  String? status;

  @JsonKey(name: "Count_QTY_WAREHOUSE")
  String? countQtyWarehouse;

  @JsonKey(name: "Promotion_Code2")
  String? promotionCode2;

  @JsonKey(name: "Promotion_Code3")
  String? promotionCode3;

  @JsonKey(name: "OriginalFree")
  double? originalFree;

  @JsonKey(name: "OriginalDiscountRate")
  String? originalDiscountRate;

  @JsonKey(name: "OriginalDiscount")
  double? originalDiscount;

  @JsonKey(name: "ItemsStatus")
  String? itemsStatus;

  @JsonKey(name: "FromProductIdList")
  String? fromProductIdList;

  @JsonKey(name: "Cost")
  double? cost;

  @JsonKey(name: "Post_Date")
  String? postDate;

  @JsonKey(name: "AvgDiscount")
  double? avgDiscount;

  @JsonKey(name: "TotalExvat")
  double? totalExvat;

  @JsonKey(name: "TotalInvat")
  double? totalInvat;

  @JsonKey(name: "DiscountExvat")
  double? discountExvat;

  @JsonKey(name: "DiscountInvat")
  double? discountInvat;

  @JsonKey(name: "Orderid_Ref")
  String? orderIdRef;

  @JsonKey(name: "CollectPoint")
  String? collectPoint;

  @JsonKey(name: "Other")
  String? other;

  @JsonKey(name: "PriceRef")
  double? priceRef;

  @JsonKey(name: "Promotion_Code4")
  String? promotionCode4;

  @JsonKey(name: "Promotion_Code5")
  String? promotionCode5;

  @JsonKey(name: "Promotion_Code6")
  String? promotionCode6;

  @JsonKey(name: "Promotion_Code7")
  String? promotionCode7;

  @JsonKey(name: "Promotion_Code8")
  String? promotionCode8;

  @JsonKey(name: "Promotion_Code9")
  String? promotionCode9;

  @JsonKey(name: "PromotionCode10")
  String? promotinoCode10;

  @JsonKey(name: "ActivateDays")
  String? activateDays;

  @JsonKey(name: "ManualDiscountItemRate")
  String? manualDiscountItemRate;

  @JsonKey(name: "ManualDiscountItem")
  double? manualDiscountItem;

  String? stockdecimal;
  String? available;

  @JsonKey(name: "SendQty")
  String? sendQty;

  String? stockItem;
  String? stockBalance;
  double? stock1;
  double? stock2;
  double? stock3;

  @JsonKey(name: "ICO")
  double? ico;

  String? area;

  @JsonKey(name: "Opt1")
  String? opt1;

  @JsonKey(name: "Opt2")
  String? opt2;

  @JsonKey(name: "Opt3")
  String? opt3;

  @JsonKey(name: "Opt4")
  String? opt4;

  @JsonKey(name: "SendLOTNUMBER")
  String? sendLotNumber;

  @JsonKey(name: "Image")
  String? image;

  Product? productcategory;

  @JsonKey(name: "ProductMattype")
  String? productMattype;

  OrderDetail();

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);
}
