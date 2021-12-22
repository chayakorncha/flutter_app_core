import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: "P_Code")
  final String productCode;

  @JsonKey(name: "P_BrandCode")
  final String? pBrandCode;

  @JsonKey(name: "P_Brand")
  final String? pBrand;

  @JsonKey(name: "P_GroupCode")
  final String? pGroupCode;

  @JsonKey(name: "P_Group")
  final String? pGroup;

  @JsonKey(name: "P_FlavourCode")
  final String? pFlavourCode;

  @JsonKey(name: "P_Flavour")
  final String? pFlavour;

  @JsonKey(name: "P_VarCode")
  final String? pVarCode;

  @JsonKey(name: "P_Var")
  final String? pVar;

  @JsonKey(name: "P_SizeCode")
  final String? pSizeCode;

  @JsonKey(name: "P_Size")
  final String? pSize;

  @JsonKey(name: "PRODUCTNAME")
  final String? productName;

  @JsonKey(name: "PRODUCTSHORTNAME")
  final String? productShortName;

  @JsonKey(name: "PRODUCTSHORTNAME_TH")
  final String? productShortNameTH;

  @JsonKey(name: "PRODUCTSHORTNAME_EN")
  final String? productShortNameEN;

  @JsonKey(name: "BARCODE1")
  final String? barcode1;

  @JsonKey(name: "BARCODE2")
  final String? barcode2;

  @JsonKey(name: "BARCODE3")
  final String? barcode3;

  @JsonKey(name: "UNIT1")
  final String? unit1;

  @JsonKey(name: "UNIT1NAME")
  final String? unit1Name;

  @JsonKey(name: "UNIT1RATE")
  late final int? unit1Rate;

  @JsonKey(name: "UNIT2")
  final String? unit2;

  @JsonKey(name: "UNIT2NAME")
  final String? unit2Name;

  @JsonKey(name: "UNIT2RATE")
  late final int? unit2Rate;

  @JsonKey(name: "UNIT3")
  final String? unit3;

  @JsonKey(name: "UNIT3NAME")
  final String? unit3Name;

  @JsonKey(name: "UNIT3RATE")
  late final int? unit3Rate;

  @JsonKey(name: "SalesPrice")
  final double? salesPrice;

  @JsonKey(name: "PRICE1")
  final double? price1;

  @JsonKey(name: "PRICE2")
  final double? price2;

  @JsonKey(name: "PRICE3")
  final double? price3;

  @JsonKey(name: "PRICE4")
  final double? price4;

  @JsonKey(name: "PRICE5")
  final double? price5;

  @JsonKey(name: "PRICE1TYPE")
  final String? price1Type;

  @JsonKey(name: "PRICE2TYPE")
  final String? price2Type;

  @JsonKey(name: "PRICE3TYPE")
  final String? price3Type;

  @JsonKey(name: "PRICE4TYPE")
  final String? price4Type;

  @JsonKey(name: "PRICE5TYPE")
  final String? price5Type;

  @JsonKey(name: "PIC_FILENAME")
  final String? picFileName;

  @JsonKey(name: "PIC_FILENAME2")
  final String? picFileName2;

  @JsonKey(name: "PIC_FILENAME3")
  final String? picFileName3;

  @JsonKey(name: "PIC_FILENAME4")
  final String? picFileName4;

  @JsonKey(name: "PIC_FILENAME5")
  final String? picFileName5;

  @JsonKey(name: "matype")
  final String? matype;

  @JsonKey(name: "matypeName")
  final String? matypeName;

  @JsonKey(name: "P_Description")
  final String? description;

  @JsonKey(name: "free_item")
  final bool freeItem;

  @JsonKey(name: "ORDER_UNIT")
  final String? orderUnit;

  @JsonKey(name: "SalesPrice1")
  final double? salesPrice1;

  @JsonKey(name: "SalesPrice2")
  final double? salesPrice2;

  @JsonKey(name: "SalesPrice3")
  final double? salesPrice3;

  @JsonKey(name: "IsProductAdvancePrice")
  final bool isProductAdvancePrice;

  @JsonKey(name: "promotionproduct")
  List<PromotionProduct> promotionProduct = [];

  @JsonKey(name: "Vol")
  final double? vol;

  @JsonKey(name: "grossweight")
  final double? grossWeight;

  @JsonKey(name: "SUBTITUTE_GOOD")
  final String? subtituteGood;

  @JsonKey(name: "DChain")
  final String? dChain;

  @JsonKey(name: "qty1")
  int? qty1;

  @JsonKey(name: "qty2")
  late int? qty2;

  @JsonKey(name: "qty3")
  late int? qty3;

  @JsonKey(name: "DeliveryTime")
  final String? deliveryTime;

  @JsonKey(name: "DeliveryBy")
  final String? deliveryBy;

  @JsonKey(name: "SEO_KEYWORD_TH")
  final String? seoKeywordTH;

  @JsonKey(name: "KPI_UOM")
  final String? kpiUOM;

  @JsonKey(name: "KPI_Value")
  final double? kpiValue;

  @JsonKey(name: "selected")
  final bool? selected;

  @JsonKey(name: "SupplierName")
  final String? supplierName;

  @JsonKey(name: "CatalogPrice")
  final double? catalogPrice;

  @JsonKey(name: "StandardPrice1")
  final double? standardPrice1;

  @JsonKey(name: "StandardPrice2")
  final double? standardPrice2;

  @JsonKey(name: "StandardPrice3")
  final double? standardPrice3;

  Product(
    this.productCode,
    this.pBrandCode,
    this.pBrand,
    this.pGroupCode,
    this.pGroup,
    this.pFlavourCode,
    this.pFlavour,
    this.pVarCode,
    this.pVar,
    this.pSizeCode,
    this.pSize,
    this.productName,
    this.productShortName,
    this.productShortNameTH,
    this.productShortNameEN,
    this.barcode1,
    this.barcode2,
    this.barcode3,
    this.unit1,
    this.unit1Name,
    this.unit1Rate,
    this.unit2,
    this.unit2Name,
    this.unit2Rate,
    this.unit3,
    this.unit3Name,
    this.unit3Rate,
    this.salesPrice,
    this.price1,
    this.price2,
    this.price3,
    this.price4,
    this.price5,
    this.price1Type,
    this.price2Type,
    this.price3Type,
    this.price4Type,
    this.price5Type,
    this.picFileName,
    this.picFileName2,
    this.picFileName3,
    this.picFileName4,
    this.picFileName5,
    this.matype,
    this.matypeName,
    this.description,
    this.freeItem,
    this.orderUnit,
    this.salesPrice1,
    this.salesPrice2,
    this.salesPrice3,
    this.isProductAdvancePrice,
    this.promotionProduct,
    this.vol,
    this.grossWeight,
    this.subtituteGood,
    this.dChain,
    this.qty1,
    this.qty2,
    this.qty3,
    this.deliveryTime,
    this.deliveryBy,
    this.seoKeywordTH,
    this.kpiUOM,
    this.kpiValue,
    this.selected,
    this.supplierName,
    this.catalogPrice,
    this.standardPrice1,
    this.standardPrice2,
    this.standardPrice3,
  );

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  static int productHasUnitNumber(Product product) {
    int unit1Rate = product.unit1Rate ?? 0;
    int unit2Rate = product.unit2Rate ?? 0;
    int unit3Rate = product.unit3Rate ?? 0;

    //มี 1 หน่วย
    if (unit1Rate <= 0 && unit2Rate > 0 && unit3Rate <= 0) {
      return 1;
    }

    //มี 2 หน่วย
    if (unit1Rate > 0 && unit2Rate > 0 && unit3Rate <= 0) {
      return 2;
    }

    //มี 3 หน่วย
    if (unit1Rate > 0 && unit2Rate > 0 && unit3Rate > 0) {
      return 3;
    }

    return 1;
  }

  static showPriceOnUnit(Product product, int unitNumber) {
    //ถ้าหน่วยที่ส่งเข้ามา มากกว่าจำนวนหน่วยของสินค้าให้ซ่อนปุ่ม
    if (unitNumber > Product.productHasUnitNumber(product)) {
      return false;
    }

    //ถ้าติด AdvancePrice
    double price = Product.getProductPrice(product,
        unitNumber: unitNumber, unFormattedNumber: true);
    if (product.isProductAdvancePrice && price == 0) {
      return false;
    }

    bool showPrice = true;
    switch (unitNumber) {
      case 1:
        if (product.unit1Name!.contains("*") ||
            product.unit1!.contains("*")) {
          showPrice = false;
        }
        break;
      case 2:
        if (product.unit2Name!.contains("*") ||
            product.unit2!.contains("*")) {
          showPrice = false;
        }
        break;
      case 3:
        if (product.unit3Name!.contains("*") ||
            product.unit3!.contains("*")) {
          showPrice = false;
        }
        break;
      default:
    }

    return showPrice;
  }

  static Map<String, dynamic> getRawProductPrice(
      Product product, String priceLevel, int unitNumber) {
    double price = 0;
    String customerLevel =
        (int.tryParse(priceLevel) ?? 1) > 5 ? "1" : priceLevel.toString();
    double advancePrice = 0;

    /** ติด AdvancePrice */
    if (product.isProductAdvancePrice) {
      switch (unitNumber) {
        case 1:
          advancePrice = product.salesPrice1 ?? 0;
          break;
        case 2:
          advancePrice = product.salesPrice2 ?? 0;
          break;
        case 3:
          advancePrice = product.salesPrice3 ?? 0;
          break;
        default:
      }
    }

    /** หาราคาปกติ */
    switch (customerLevel) {
      case "1":
        price = product.price1 ?? 0;
        break;
      case "2":
        price = product.price2 ?? 0;
        break;
      case "3":
        price = product.price3 ?? 0;
        break;
      case "4":
        price = product.price4 ?? 0;
        break;
      case "5":
        price = product.price5 ?? 0;
        break;
      default:
        price = product.price1 ?? 0;
        break;
    }

    if (price > 0) {
      int unit2Rate = product.unit2Rate ?? 0;
      int unit3Rate = product.unit3Rate ?? 0;

      if (productHasUnitNumber(product) == 1) {
        if (unitNumber == 1) {}
      }
      if (productHasUnitNumber(product) == 2) {
        if (unitNumber == 1) {
        } else if (unitNumber == 2) {
          price = price / unit2Rate;
        }
      }
      if (productHasUnitNumber(product) == 3) {
        if (unitNumber == 1) {
        } else if (unitNumber == 2) {
          price = (price / unit3Rate * unit2Rate);
        } else if (unitNumber == 3) {
          price = price / unit3Rate;
        }
      }
    }

    return {
      "masterPrice": price,
      "advancePrice": advancePrice,
      "diff": advancePrice - price,
      "useAdvancePrice": advancePrice == 0 ? false : advancePrice < price
    };
  }

  static double getSalesProductPrice(Product product) {
    //จับจากหน่วยใหญ่ไปแสดงในหน้า catelog (ที่จริงตรงนี้ต้องดูจาก Config)
    if (showPriceOnUnit(product, 1)) {
      return double.parse(getProductPrice(product, unitNumber: 1));
    } else if (Product.showPriceOnUnit(product, 2)) {
      return double.parse(getProductPrice(product, unitNumber: 2));
    } else if (Product.showPriceOnUnit(product, 3)) {
      return double.parse(getProductPrice(product, unitNumber: 3));
    } else {
      return double.parse(getProductPrice(product, unitNumber: 1));
    }
  }

  static double getStandardProductPrice(Product product) {
    //จับจากหน่วยใหญ่ไปแสดงในหน้า catelog (ที่จริงตรงนี้ต้องดูจาก Config)
    if (showPriceOnUnit(product, 1)) {
      return product.standardPrice1!;
    } else if (showPriceOnUnit(product, 2)) {
      return product.standardPrice2!;
    } else if (showPriceOnUnit(product, 3)) {
      return product.standardPrice3!;
    } else {
      return product.standardPrice1!;
    }
  }

  static dynamic getProductPrice(Product product,
      {int unitNumber = 1, bool unFormattedNumber = false}) {
    double price = 0;

    /** ติด AdvancePrice */
    if (product.isProductAdvancePrice) {
      switch (unitNumber) {
        case 1:
          price = product.salesPrice1 ?? 0;
          break;
        case 2:
          price = product.salesPrice2 ?? 0;
          break;
        case 3:
          price = product.salesPrice3 ?? 0;
          break;
        default:
      }
    } else {
      price = product.salesPrice ?? 0;

      if ((product.salesPrice ?? 0) == 0) {
        return 0;
      }

      if (price > 0) {
        var hasUnitNumber = productHasUnitNumber(product);
        if (hasUnitNumber == 1) {
          if (unitNumber == 1) {
            // price = price;
          }
        }
        if (hasUnitNumber == 2) {
          if (unitNumber == 1) {
            // price = price;
          } else if (unitNumber == 2) {
            price = price / product.unit2Rate!.toDouble();
          }
        }
        if (hasUnitNumber == 3) {
          if (unitNumber == 1) {
            // price = price;
          } else if (unitNumber == 2) {
            price = (price / product.unit3Rate!.toDouble()) *
                product.unit2Rate!.toDouble();
          } else if (unitNumber == 3) {
            price = price / product.unit3Rate!.toDouble();
          }
        }
      }
    }

    if (unFormattedNumber) return price;

    var formattedPrice = price.toStringAsFixed(2);
    return formattedPrice;
  }
}

@JsonSerializable(explicitToJson: true)
class PromotionProduct {
  @JsonKey(name: "promotionid")
  String? promotionId;

  @JsonKey(name: "productid")
  String? productId;

  @JsonKey(name: "promotionname")
  String? promotionName;

  @JsonKey(name: "promotionremark")
  String? promotionRemark;

  @JsonKey(name: "datebegin")
  String? dateBegin;

  @JsonKey(name: "dateend")
  String? dateEnd;

  @JsonKey(name: "promotiontext")
  String? promotionText;

  PromotionProduct();

  factory PromotionProduct.fromJson(Map<String, dynamic> json) =>
      _$PromotionProductFromJson(json);
  Map<String, dynamic> toJson() => _$PromotionProductToJson(this);
}
