// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderList _$OrderListFromJson(Map<String, dynamic> json) => OrderList()
  ..orderId = json['OrderID'] as String
  ..saleUnit = json['SaleUnit'] as String
  ..id = json['_id'] as int
  ..orderDate = json['OrderDate'] as String?
  ..canceled = json['Canceled'] as String?
  ..documentId = json['DocumentID'] as String?
  ..companyId = json['CompanyID'] as String?
  ..nDocumentId = json['NDocumentID'] as String?
  ..nCompanyId = json['NCompanyID'] as String?
  ..customerId = json['Customer_Id'] as String?
  ..customerName = json['Customer_Name'] as String?
  ..vat = json['VAT'] as String?
  ..total = (json['Total'] as num?)?.toDouble()
  ..nTotal = (json['NTotal'] as num?)?.toDouble()
  ..money = (json['Money'] as num?)?.toDouble()
  ..nMoney = (json['NMoney'] as num?)?.toDouble()
  ..signature = json['Signature'] as String?
  ..approverStatus = json['ApproverStatus'] as String?
  ..vatRate = (json['VATRATE'] as num?)?.toDouble()
  ..vatValue = (json['VATVALUE'] as num?)?.toDouble()
  ..nVatValue = (json['NVATVALUE'] as num?)?.toDouble()
  ..branchCode = json['BranchCode'] as String?
  ..regionCode = json['RegionCode'] as String?
  ..areaCode = json['AreaCode'] as String?
  ..companyCode = json['CompanyCode'] as String?
  ..pricelevel = json['PRICELEVEL'] as String?
  ..warehouseId = json['WarehouseID'] as String?
  ..saleCode = json['SaleCode'] as String?
  ..shelfNo = json['ShelfNo'] as String?
  ..carLicenseId = json['CarLicenseID'] as String?
  ..orderType = json['ORDERTYPE'] as String?
  ..customerAddress = (json['CUSTOMER_ADDRESS'] as num?)?.toDouble()
  ..creditMoneyNum = (json['CreditMoney_Num'] as num?)?.toDouble()
  ..creditNoNum = json['CreditNo_Num'] as String?
  ..checkMoneyNum = json['CheckMoney_Num'] as String?
  ..checkNoNum = json['CheckNo_Num'] as String?
  ..checkDateNum = json['CheckDate_Num'] as String?
  ..transferMoneyNum = (json['TransferMoney_Num'] as num?)?.toDouble()
  ..transferBankNum = json['TransferBank_Num'] as String?
  ..transferBankBookNum = json['TransferBankBook_Num'] as String?
  ..transferDateNum = json['TransferDate_Num'] as String?
  ..cashMoneyNum = (json['CashMoney_Num'] as num?)?.toDouble()
  ..creditMoneyPom = json['CreditMoney_Pom'] as String?
  ..creditNoPom = json['CreditNo_Pom'] as String?
  ..checkMoneyPom = (json['CheckMoney_Pom'] as num?)?.toDouble()
  ..checkNoPom = json['CheckNo_Pom'] as String?
  ..checkDatePom = json['CheckDate_Pom'] as String?
  ..transferMoneyPom = (json['TransferMoney_Pom'] as num?)?.toDouble()
  ..transferBankPom = json['TransferBank_Pom'] as String?
  ..transferBankBookPom = json['TransferBankBook_Pom'] as String?
  ..transferDatePom = json['TransferDate_Pom'] as String?
  ..cashMoneyPom = (json['CashMoney_Pom'] as num?)?.toDouble()
  ..saleType = json['SaleType'] as String?
  ..optional1 = json['OPTIONAL1'] as String?
  ..optional2 = json['OPTIONAL2'] as String?
  ..optional3 = json['OPTIONAL3'] as String?
  ..optional4 = json['OPTIONAL4'] as String?
  ..optional5 = json['OPTIONAL5'] as String?
  ..discountRate = json['DISCOUNT_RATE'] as String?
  ..discountAmount = (json['DISCOUNT_AMOUNT'] as num?)?.toDouble()
  ..deliverydate = json['DELIVERYDATE'] as String?
  ..refNo = json['RefNo'] as String?
  ..tflag = json['TFLAG'] as String?
  ..remark = json['Remark'] as String?
  ..remark2 = json['Remark2'] as String?
  ..remark3 = json['Remark3'] as String?
  ..remark4 = json['Remark4'] as String?
  ..whAmount = (json['WH_Amount'] as num?)?.toDouble()
  ..changeValue = (json['Change_VALUE'] as num?)?.toDouble()
  ..receiveValue = (json['Receive_VALUE'] as num?)?.toDouble()
  ..tableId = json['Table_ID'] as String?
  ..serviceCharge = json['Service_Charge'] as String?
  ..moneyDeposit = (json['Money_Deposit'] as num?)?.toDouble()
  ..moneyValue = (json['Money_VALUE'] as num?)?.toDouble()
  ..printInvoice = json['Print_Invoice'] as String?
  ..whRate = json['WH_Rate'] as String?
  ..taxValue = (json['TaxVALUE'] as num?)?.toDouble()
  ..moneyAdj = (json['MONEY_Adj'] as num?)?.toDouble()
  ..orderTime = json['OrderTime'] as String?
  ..createSalesOrder = (json['CreateSalesOrder'] as num?)?.toDouble()
  ..docState = json['DocState'] as String?
  ..shipto = json['SHIPTO'] as String?
  ..pono = json['PONO'] as String?
  ..refno2 = json['REFNO2'] as String?
  ..refno3 = json['REFNO3'] as String?
  ..billto = json['BILLTO'] as String?
  ..fromWarehouseId = json['From_WarehouseID'] as String?
  ..fromShelfNo = json['From_ShelfNo'] as String?
  ..deliveryRouteId = json['DeliveryRouteID'] as String?
  ..quantityNotSend = (json['QuantityNotSend'] as num?)?.toDouble()
  ..updatedBy = json['Updated_By'] as String?
  ..approvedDate = json['APPROVED_DATE'] as String?
  ..approvedTime = json['APPROVED_TIME'] as String?
  ..approvedBy = json['APPROVED_BY'] as String?
  ..promotionCode = json['PromotionCode'] as String?
  ..promotionCode1 = json['PromotionCode1'] as String?
  ..promotionCode2 = json['PromotionCode2'] as String?
  ..promotionCode3 = json['PromotionCode3'] as String?
  ..promotionCode4 = json['PromotionCode4'] as String?
  ..promotionCode5 = json['PromotionCode5'] as String?
  ..originalDiscountRate = json['OriginalDiscountRate'] as String?
  ..originalDiscount = (json['OriginalDiscount'] as num?)?.toDouble()
  ..currencyCode = json['CurrencyCode'] as String?
  ..totalRemain = (json['Total_Remain'] as num?)?.toDouble()
  ..cnCash = json['CNCash'] as String?
  ..bcTransferDate = json['BCTransferDate'] as String?
  ..podDate = json['PODDate'] as String?
  ..podTime = json['PODTime'] as String?
  ..ref1 = json['REF_1'] as String?
  ..ref2 = json['REF_2'] as String?
  ..ref3 = json['REF_3'] as String?
  ..ref4 = json['REF_4'] as String?
  ..ref5 = json['REF_5'] as String?
  ..ref6 = json['REF_6'] as String?
  ..ref7 = json['REF_7'] as String?
  ..ref8 = json['REF_8'] as String?
  ..ref9 = json['REF_9'] as String?
  ..ref10 = json['REF_10'] as String?
  ..ref11 = json['REF_11'] as String?
  ..ref12 = json['REF_12'] as String?
  ..ref13 = json['REF_13'] as String?
  ..ref14 = json['REF_14'] as String?
  ..ref15 = json['REF_15'] as String?
  ..approveList = json['ApproveList'] as String?
  ..discountRate1 = json['DiscountRate1'] as String?
  ..discountAmount1 = (json['DiscountAmount1'] as num?)?.toDouble()
  ..discountRate2 = json['DiscountRate2'] as String?
  ..discountAmount2 = (json['DiscountAmount2'] as num?)?.toDouble()
  ..discountRate3 = json['DiscountRate3'] as String?
  ..discountAmount3 = (json['DiscountAmount3'] as num?)?.toDouble()
  ..vmiCode = json['VMICode'] as String?
  ..other = json['Other'] as String?
  ..opt = json['OPT'] as String?
  ..createBy = json['CREATE_BY'] as String?
  ..createDate = json['CREATE_DATE'] as String?
  ..updateBy = json['UPDATE_BY'] as String?
  ..updateDate = json['UPDATE_DATE'] as String?
  ..deliveryTime = json['DeliveryTime'] as String?
  ..shipmentCode = json['shipment_code'] as String?
  ..paymentType = json['PaymentType'] as String?
  ..serialNumber = json['SerialNumber'] as String?
  ..cardType = json['CardType'] as String?
  ..manualDiscountRate = json['ManualDiscountRate'] as String?
  ..manualDiscount = (json['ManualDiscount'] as num?)?.toDouble()
  ..manualDiscountShippingRate = json['ManualDiscountShippingRate'] as String?
  ..manualDiscountShipping =
      (json['ManualDiscountShipping'] as num?)?.toDouble()
  ..manualDiscountKpiRate = json['ManualDiscountKpiRate'] as String?
  ..manualDiscountKpi = (json['ManualDiscountKpi'] as num?)?.toDouble()
  ..isManualDiscount = json['IsManualDiscount'] as String?
  ..codStatus = json['cod_status'] as String?
  ..prepayId = json['prepay_id'] as String?
  ..promotionDnCode1 = json['PromotionDN_Code1'] as String?
  ..promotionDnCode2 = json['PromotionDN_Code2'] as String?
  ..promotionDnCode3 = json['PromotionDN_Code3'] as String?
  ..promotionDnCode4 = json['PromotionDN_Code4'] as String?
  ..promotionDnCode5 = json['PromotionDN_Code5'] as String?
  ..promotionDnValue1 = (json['PromotionDN_Value1'] as num?)?.toDouble()
  ..promotionDnValue2 = (json['PromotionDN_Value2'] as num?)?.toDouble()
  ..promotionDnValue3 = (json['PromotionDN_Value3'] as num?)?.toDouble()
  ..promotionDnValue4 = (json['PromotionDN_Value4'] as num?)?.toDouble()
  ..promotionDnValue5 = (json['PromotionDN_Value5'] as num?)?.toDouble()
  ..needTaxInvoice = json['NeedTaxInvoice'] as String?
  ..flagstep = json['flagstep'] as String?
  ..emailstatus = json['emailstatus'] as String?
  ..field = json['field'] as String?
  ..subscribeStartDate = json['SubscribeStartDate'] as String?
  ..subscribeUnitNumber = (json['SubscribeUnitNumber'] as num?)?.toDouble()
  ..subscribeUnit = json['SubscribeUnit'] as String?
  ..refCenterId = json['RefCenterID'] as String?
  ..refOrderId = json['RefOrderID'] as String?
  ..refSaleUnit = json['RefSaleUnit'] as String?
  ..subscribeTotal = (json['SubscribeTotal'] as num?)?.toDouble()
  ..statusMessage = json['status_message'] as String?
  ..refOnlinePaymentNo = json['RefOnlinePaymentNO'] as String?
  ..onlinePaymentSource = json['OnlinePaymentSource'] as String?
  ..onlinePaymentDate = json['OnlinePaymentDate'] as String?
  ..deliveryRoute = json['DeliveryRoute']
  ..invoices = (json['Invoices'] as List<dynamic>?)
      ?.map((e) => OrderList.fromJson(e as Map<String, dynamic>))
      .toList()
  ..orderDetail = json['OrderDetail'] as List<dynamic>?
  ..orderBody = json['OrderBody'] as List<dynamic>?
  ..shippingAddress = json['ShippingAddress']
  ..billingAddress = json['BillingAddress']
  ..customer = json['Customer'];

Map<String, dynamic> _$OrderListToJson(OrderList instance) => <String, dynamic>{
      'OrderID': instance.orderId,
      'SaleUnit': instance.saleUnit,
      '_id': instance.id,
      'OrderDate': instance.orderDate,
      'Canceled': instance.canceled,
      'DocumentID': instance.documentId,
      'CompanyID': instance.companyId,
      'NDocumentID': instance.nDocumentId,
      'NCompanyID': instance.nCompanyId,
      'Customer_Id': instance.customerId,
      'Customer_Name': instance.customerName,
      'VAT': instance.vat,
      'Total': instance.total,
      'NTotal': instance.nTotal,
      'Money': instance.money,
      'NMoney': instance.nMoney,
      'Signature': instance.signature,
      'ApproverStatus': instance.approverStatus,
      'VATRATE': instance.vatRate,
      'VATVALUE': instance.vatValue,
      'NVATVALUE': instance.nVatValue,
      'BranchCode': instance.branchCode,
      'RegionCode': instance.regionCode,
      'AreaCode': instance.areaCode,
      'CompanyCode': instance.companyCode,
      'PRICELEVEL': instance.pricelevel,
      'WarehouseID': instance.warehouseId,
      'SaleCode': instance.saleCode,
      'ShelfNo': instance.shelfNo,
      'CarLicenseID': instance.carLicenseId,
      'ORDERTYPE': instance.orderType,
      'CUSTOMER_ADDRESS': instance.customerAddress,
      'CreditMoney_Num': instance.creditMoneyNum,
      'CreditNo_Num': instance.creditNoNum,
      'CheckMoney_Num': instance.checkMoneyNum,
      'CheckNo_Num': instance.checkNoNum,
      'CheckDate_Num': instance.checkDateNum,
      'TransferMoney_Num': instance.transferMoneyNum,
      'TransferBank_Num': instance.transferBankNum,
      'TransferBankBook_Num': instance.transferBankBookNum,
      'TransferDate_Num': instance.transferDateNum,
      'CashMoney_Num': instance.cashMoneyNum,
      'CreditMoney_Pom': instance.creditMoneyPom,
      'CreditNo_Pom': instance.creditNoPom,
      'CheckMoney_Pom': instance.checkMoneyPom,
      'CheckNo_Pom': instance.checkNoPom,
      'CheckDate_Pom': instance.checkDatePom,
      'TransferMoney_Pom': instance.transferMoneyPom,
      'TransferBank_Pom': instance.transferBankPom,
      'TransferBankBook_Pom': instance.transferBankBookPom,
      'TransferDate_Pom': instance.transferDatePom,
      'CashMoney_Pom': instance.cashMoneyPom,
      'SaleType': instance.saleType,
      'OPTIONAL1': instance.optional1,
      'OPTIONAL2': instance.optional2,
      'OPTIONAL3': instance.optional3,
      'OPTIONAL4': instance.optional4,
      'OPTIONAL5': instance.optional5,
      'DISCOUNT_RATE': instance.discountRate,
      'DISCOUNT_AMOUNT': instance.discountAmount,
      'DELIVERYDATE': instance.deliverydate,
      'RefNo': instance.refNo,
      'TFLAG': instance.tflag,
      'Remark': instance.remark,
      'Remark2': instance.remark2,
      'Remark3': instance.remark3,
      'Remark4': instance.remark4,
      'WH_Amount': instance.whAmount,
      'Change_VALUE': instance.changeValue,
      'Receive_VALUE': instance.receiveValue,
      'Table_ID': instance.tableId,
      'Service_Charge': instance.serviceCharge,
      'Money_Deposit': instance.moneyDeposit,
      'Money_VALUE': instance.moneyValue,
      'Print_Invoice': instance.printInvoice,
      'WH_Rate': instance.whRate,
      'TaxVALUE': instance.taxValue,
      'MONEY_Adj': instance.moneyAdj,
      'OrderTime': instance.orderTime,
      'CreateSalesOrder': instance.createSalesOrder,
      'DocState': instance.docState,
      'SHIPTO': instance.shipto,
      'PONO': instance.pono,
      'REFNO2': instance.refno2,
      'REFNO3': instance.refno3,
      'BILLTO': instance.billto,
      'From_WarehouseID': instance.fromWarehouseId,
      'From_ShelfNo': instance.fromShelfNo,
      'DeliveryRouteID': instance.deliveryRouteId,
      'QuantityNotSend': instance.quantityNotSend,
      'Updated_By': instance.updatedBy,
      'APPROVED_DATE': instance.approvedDate,
      'APPROVED_TIME': instance.approvedTime,
      'APPROVED_BY': instance.approvedBy,
      'PromotionCode': instance.promotionCode,
      'PromotionCode1': instance.promotionCode1,
      'PromotionCode2': instance.promotionCode2,
      'PromotionCode3': instance.promotionCode3,
      'PromotionCode4': instance.promotionCode4,
      'PromotionCode5': instance.promotionCode5,
      'OriginalDiscountRate': instance.originalDiscountRate,
      'OriginalDiscount': instance.originalDiscount,
      'CurrencyCode': instance.currencyCode,
      'Total_Remain': instance.totalRemain,
      'CNCash': instance.cnCash,
      'BCTransferDate': instance.bcTransferDate,
      'PODDate': instance.podDate,
      'PODTime': instance.podTime,
      'REF_1': instance.ref1,
      'REF_2': instance.ref2,
      'REF_3': instance.ref3,
      'REF_4': instance.ref4,
      'REF_5': instance.ref5,
      'REF_6': instance.ref6,
      'REF_7': instance.ref7,
      'REF_8': instance.ref8,
      'REF_9': instance.ref9,
      'REF_10': instance.ref10,
      'REF_11': instance.ref11,
      'REF_12': instance.ref12,
      'REF_13': instance.ref13,
      'REF_14': instance.ref14,
      'REF_15': instance.ref15,
      'ApproveList': instance.approveList,
      'DiscountRate1': instance.discountRate1,
      'DiscountAmount1': instance.discountAmount1,
      'DiscountRate2': instance.discountRate2,
      'DiscountAmount2': instance.discountAmount2,
      'DiscountRate3': instance.discountRate3,
      'DiscountAmount3': instance.discountAmount3,
      'VMICode': instance.vmiCode,
      'Other': instance.other,
      'OPT': instance.opt,
      'CREATE_BY': instance.createBy,
      'CREATE_DATE': instance.createDate,
      'UPDATE_BY': instance.updateBy,
      'UPDATE_DATE': instance.updateDate,
      'DeliveryTime': instance.deliveryTime,
      'shipment_code': instance.shipmentCode,
      'PaymentType': instance.paymentType,
      'SerialNumber': instance.serialNumber,
      'CardType': instance.cardType,
      'ManualDiscountRate': instance.manualDiscountRate,
      'ManualDiscount': instance.manualDiscount,
      'ManualDiscountShippingRate': instance.manualDiscountShippingRate,
      'ManualDiscountShipping': instance.manualDiscountShipping,
      'ManualDiscountKpiRate': instance.manualDiscountKpiRate,
      'ManualDiscountKpi': instance.manualDiscountKpi,
      'IsManualDiscount': instance.isManualDiscount,
      'cod_status': instance.codStatus,
      'prepay_id': instance.prepayId,
      'PromotionDN_Code1': instance.promotionDnCode1,
      'PromotionDN_Code2': instance.promotionDnCode2,
      'PromotionDN_Code3': instance.promotionDnCode3,
      'PromotionDN_Code4': instance.promotionDnCode4,
      'PromotionDN_Code5': instance.promotionDnCode5,
      'PromotionDN_Value1': instance.promotionDnValue1,
      'PromotionDN_Value2': instance.promotionDnValue2,
      'PromotionDN_Value3': instance.promotionDnValue3,
      'PromotionDN_Value4': instance.promotionDnValue4,
      'PromotionDN_Value5': instance.promotionDnValue5,
      'NeedTaxInvoice': instance.needTaxInvoice,
      'flagstep': instance.flagstep,
      'emailstatus': instance.emailstatus,
      'field': instance.field,
      'SubscribeStartDate': instance.subscribeStartDate,
      'SubscribeUnitNumber': instance.subscribeUnitNumber,
      'SubscribeUnit': instance.subscribeUnit,
      'RefCenterID': instance.refCenterId,
      'RefOrderID': instance.refOrderId,
      'RefSaleUnit': instance.refSaleUnit,
      'SubscribeTotal': instance.subscribeTotal,
      'status_message': instance.statusMessage,
      'RefOnlinePaymentNO': instance.refOnlinePaymentNo,
      'OnlinePaymentSource': instance.onlinePaymentSource,
      'OnlinePaymentDate': instance.onlinePaymentDate,
      'DeliveryRoute': instance.deliveryRoute,
      'Invoices': instance.invoices?.map((e) => e.toJson()).toList(),
      'OrderDetail': instance.orderDetail,
      'OrderBody': instance.orderBody,
      'ShippingAddress': instance.shippingAddress,
      'BillingAddress': instance.billingAddress,
      'Customer': instance.customer,
    };

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => OrderDetail()
  ..orderId = json['OrderID'] as String?
  ..saleUnit = json['SaleUnit'] as String?
  ..id = json['_id'] as int?
  ..lotNumber = json['LOTNUMBER'] as String?
  ..orderDate = json['OrderDate'] as String?
  ..categoryCode = json['CategoryCode'] as String?
  ..no = json['No'] as int
  ..productId = json['ProductID'] as String?
  ..productName = json['ProductName'] as String?
  ..price = (json['Price'] as num?)?.toDouble()
  ..discount = (json['Discount'] as num?)?.toDouble()
  ..quantityMain = (json['QuantityMain'] as num?)?.toDouble()
  ..unitMain = json['UnitMain'] as String?
  ..unitMainName = json['UnitMainName'] as String?
  ..quantityMinor = (json['QuantityMinor'] as num?)?.toDouble()
  ..unitMinor = json['UnitMinor'] as String?
  ..unitMinorName = json['UnitMinorName'] as String?
  ..productFree = json['ProductFree'] as String?
  ..quantityFree = (json['QuantityFree'] as num?)?.toDouble()
  ..unitFree = json['UnitFree'] as String?
  ..unitFreeName = json['UnitFreeName'] as String?
  ..productMinorFree = json['ProductMinorFree'] as String?
  ..quantityMinorFree = (json['QuantityMinorFree'] as num?)?.toDouble()
  ..unitMinorFree = json['UnitMinorFree'] as String?
  ..unitMinorFreeName = json['UnitMinorFreeName'] as String?
  ..promotionCode = json['Promotion_Code'] as String?
  ..total = (json['Total'] as num?)?.toDouble()
  ..transactionRef = json['TransactionRef'] as String?
  ..unit2Rate = (json['Unit2Rate'] as num?)?.toDouble()
  ..productType = json['ProductType'] as String?
  ..quantityMinor3 = (json['QuantityMinor3'] as num?)?.toDouble()
  ..unitMinor3 = json['UnitMinor3'] as String?
  ..unitMinorName3 = json['UnitMinorName3'] as String?
  ..quantityMinorFree3 = (json['QuantityMinorFree3'] as num?)?.toDouble()
  ..unitMinorFree3 = json['UnitMinorFree3'] as String?
  ..unitMinorFreeName3 = json['UnitMinorFreeName3'] as String?
  ..discountRate = json['DISCOUNT_RATE'] as String?
  ..unit3Rate = (json['Unit3Rate'] as num?)?.toDouble()
  ..vat = json['VAT'] as String?
  ..taxType = json['TaxType'] as String?
  ..returnReason = json['RETURN_REASON'] as String?
  ..tflag = json['TFLAG'] as String?
  ..orderType = json['ORDERTYPE'] as String?
  ..taxValue = (json['TaxVALUE'] as num?)?.toDouble()
  ..countQty = (json['Count_QTY'] as num?)?.toDouble()
  ..backlog = (json['Backlog'] as num?)?.toDouble()
  ..totalQuantity = (json['TotalQuantity'] as num?)?.toDouble()
  ..status = json['Status'] as String?
  ..countQtyWarehouse = json['Count_QTY_WAREHOUSE'] as String?
  ..promotionCode2 = json['Promotion_Code2'] as String?
  ..promotionCode3 = json['Promotion_Code3'] as String?
  ..originalFree = (json['OriginalFree'] as num?)?.toDouble()
  ..originalDiscountRate = json['OriginalDiscountRate'] as String?
  ..originalDiscount = (json['OriginalDiscount'] as num?)?.toDouble()
  ..itemsStatus = json['ItemsStatus'] as String?
  ..fromProductIdList = json['FromProductIdList'] as String?
  ..cost = (json['Cost'] as num?)?.toDouble()
  ..postDate = json['Post_Date'] as String?
  ..avgDiscount = (json['AvgDiscount'] as num?)?.toDouble()
  ..totalExvat = (json['TotalExvat'] as num?)?.toDouble()
  ..totalInvat = (json['TotalInvat'] as num?)?.toDouble()
  ..discountExvat = (json['DiscountExvat'] as num?)?.toDouble()
  ..discountInvat = (json['DiscountInvat'] as num?)?.toDouble()
  ..orderIdRef = json['Orderid_Ref'] as String?
  ..collectPoint = json['CollectPoint'] as String?
  ..other = json['Other'] as String?
  ..priceRef = (json['PriceRef'] as num?)?.toDouble()
  ..promotionCode4 = json['Promotion_Code4'] as String?
  ..promotionCode5 = json['Promotion_Code5'] as String?
  ..promotionCode6 = json['Promotion_Code6'] as String?
  ..promotionCode7 = json['Promotion_Code7'] as String?
  ..promotionCode8 = json['Promotion_Code8'] as String?
  ..promotionCode9 = json['Promotion_Code9'] as String?
  ..promotinoCode10 = json['PromotionCode10'] as String?
  ..activateDays = json['ActivateDays'] as String?
  ..manualDiscountItemRate = json['ManualDiscountItemRate'] as String?
  ..manualDiscountItem = (json['ManualDiscountItem'] as num?)?.toDouble()
  ..stockdecimal = json['stockdecimal'] as String?
  ..available = json['available'] as String?
  ..sendQty = json['SendQty'] as String?
  ..stockItem = json['stockItem'] as String?
  ..stockBalance = json['stockBalance'] as String?
  ..stock1 = (json['stock1'] as num?)?.toDouble()
  ..stock2 = (json['stock2'] as num?)?.toDouble()
  ..stock3 = (json['stock3'] as num?)?.toDouble()
  ..ico = (json['ICO'] as num?)?.toDouble()
  ..area = json['area'] as String?
  ..opt1 = json['Opt1'] as String?
  ..opt2 = json['Opt2'] as String?
  ..opt3 = json['Opt3'] as String?
  ..opt4 = json['Opt4'] as String?
  ..sendLotNumber = json['SendLOTNUMBER'] as String?
  ..image = json['Image'] as String?
  ..productcategory = json['productcategory'] == null
      ? null
      : Product.fromJson(json['productcategory'] as Map<String, dynamic>)
  ..productMattype = json['ProductMattype'] as String?;

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) =>
    <String, dynamic>{
      'OrderID': instance.orderId,
      'SaleUnit': instance.saleUnit,
      '_id': instance.id,
      'LOTNUMBER': instance.lotNumber,
      'OrderDate': instance.orderDate,
      'CategoryCode': instance.categoryCode,
      'No': instance.no,
      'ProductID': instance.productId,
      'ProductName': instance.productName,
      'Price': instance.price,
      'Discount': instance.discount,
      'QuantityMain': instance.quantityMain,
      'UnitMain': instance.unitMain,
      'UnitMainName': instance.unitMainName,
      'QuantityMinor': instance.quantityMinor,
      'UnitMinor': instance.unitMinor,
      'UnitMinorName': instance.unitMinorName,
      'ProductFree': instance.productFree,
      'QuantityFree': instance.quantityFree,
      'UnitFree': instance.unitFree,
      'UnitFreeName': instance.unitFreeName,
      'ProductMinorFree': instance.productMinorFree,
      'QuantityMinorFree': instance.quantityMinorFree,
      'UnitMinorFree': instance.unitMinorFree,
      'UnitMinorFreeName': instance.unitMinorFreeName,
      'Promotion_Code': instance.promotionCode,
      'Total': instance.total,
      'TransactionRef': instance.transactionRef,
      'Unit2Rate': instance.unit2Rate,
      'ProductType': instance.productType,
      'QuantityMinor3': instance.quantityMinor3,
      'UnitMinor3': instance.unitMinor3,
      'UnitMinorName3': instance.unitMinorName3,
      'QuantityMinorFree3': instance.quantityMinorFree3,
      'UnitMinorFree3': instance.unitMinorFree3,
      'UnitMinorFreeName3': instance.unitMinorFreeName3,
      'DISCOUNT_RATE': instance.discountRate,
      'Unit3Rate': instance.unit3Rate,
      'VAT': instance.vat,
      'TaxType': instance.taxType,
      'RETURN_REASON': instance.returnReason,
      'TFLAG': instance.tflag,
      'ORDERTYPE': instance.orderType,
      'TaxVALUE': instance.taxValue,
      'Count_QTY': instance.countQty,
      'Backlog': instance.backlog,
      'TotalQuantity': instance.totalQuantity,
      'Status': instance.status,
      'Count_QTY_WAREHOUSE': instance.countQtyWarehouse,
      'Promotion_Code2': instance.promotionCode2,
      'Promotion_Code3': instance.promotionCode3,
      'OriginalFree': instance.originalFree,
      'OriginalDiscountRate': instance.originalDiscountRate,
      'OriginalDiscount': instance.originalDiscount,
      'ItemsStatus': instance.itemsStatus,
      'FromProductIdList': instance.fromProductIdList,
      'Cost': instance.cost,
      'Post_Date': instance.postDate,
      'AvgDiscount': instance.avgDiscount,
      'TotalExvat': instance.totalExvat,
      'TotalInvat': instance.totalInvat,
      'DiscountExvat': instance.discountExvat,
      'DiscountInvat': instance.discountInvat,
      'Orderid_Ref': instance.orderIdRef,
      'CollectPoint': instance.collectPoint,
      'Other': instance.other,
      'PriceRef': instance.priceRef,
      'Promotion_Code4': instance.promotionCode4,
      'Promotion_Code5': instance.promotionCode5,
      'Promotion_Code6': instance.promotionCode6,
      'Promotion_Code7': instance.promotionCode7,
      'Promotion_Code8': instance.promotionCode8,
      'Promotion_Code9': instance.promotionCode9,
      'PromotionCode10': instance.promotinoCode10,
      'ActivateDays': instance.activateDays,
      'ManualDiscountItemRate': instance.manualDiscountItemRate,
      'ManualDiscountItem': instance.manualDiscountItem,
      'stockdecimal': instance.stockdecimal,
      'available': instance.available,
      'SendQty': instance.sendQty,
      'stockItem': instance.stockItem,
      'stockBalance': instance.stockBalance,
      'stock1': instance.stock1,
      'stock2': instance.stock2,
      'stock3': instance.stock3,
      'ICO': instance.ico,
      'area': instance.area,
      'Opt1': instance.opt1,
      'Opt2': instance.opt2,
      'Opt3': instance.opt3,
      'Opt4': instance.opt4,
      'SendLOTNUMBER': instance.sendLotNumber,
      'Image': instance.image,
      'productcategory': instance.productcategory?.toJson(),
      'ProductMattype': instance.productMattype,
    };
