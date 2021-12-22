import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {

  @JsonKey(name: 'CUSTOMERCODE')
  final String customerCode;

  @JsonKey(name: 'CUSTOMERNAME')
  final String customerName;

  @JsonKey(name: 'SALEUNIT')
  final String saleUnit;

  @JsonKey(name: 'SALEUNIT_NAME')
  final String saleUnitName;

  @JsonKey(name: 'PRIMARYCODE')
  final String? primaryCode;

  @JsonKey(name: 'ADDRESS')
  final String? address;

  @JsonKey(name: 'TEL')
  final String? tel;

  @JsonKey(name: 'TypeCode')
  final String? typeCode;

  @JsonKey(name: 'TAXNO')
  final String? taxNo;

  @JsonKey(name: 'PriceLevel')
  final String? priceLevel;

  @JsonKey(name: 'ProvinceID')
  final String? provinceID;

  @JsonKey(name: 'ProvinceName')
  final String? proviceName;

  @JsonKey(name: 'AmpherID')
  final String? ampherID;

  @JsonKey(name: 'AmpherName')
  final String? ampherName;

  @JsonKey(name: 'TownID')
  final String? townID;

  @JsonKey(name: 'TownName')
  final String? townName;

  @JsonKey(name: 'ZIP')
  final String? zip;

  @JsonKey(name: 'lat')
  final String? lat;

  @JsonKey(name: 'lon')
  final String? lon;

  @JsonKey(name: 'Branch')
  final String? branch;

  @JsonKey(name: 'ActiveStatus')
  final String? activeStatus;

  @JsonKey(name: 'EMAIL')
  final String? email;

  @JsonKey(name: 'MOBILENO')
  final String? mobileNo;

  @JsonKey(name: 'CONTACTPERSON')
  final String? contactPerson;

  @JsonKey(name: 'Updatedate')
  final String? updateDate;

  @JsonKey(name: 'Applydate')
  final String? applyDate;

  @JsonKey(name: 'Salesperson_Code')
  final String? salespersonCode;

  @JsonKey(name: 'Salesperson_Name')
  final String? salespersonName;

  @JsonKey(name: 'TIER')
  final String? tier;

  @JsonKey(name: 'MOBILE_SALES')
  final String? mobileSales;

  @JsonKey(name: 'MapCode')
  final String? mapCode;

  @JsonKey(name: 'BirthDate')
  final String? birthDate;

  @JsonKey(name: 'Gender')
  final String? gender;

  @JsonKey(name: 'AgentCode')
  final String? agentCode;

  final String? jtoken;

  @JsonKey(name: 'ParamValues1')
  final String? paramValues1;

  @JsonKey(name: 'ParamValues2')
  final String? paramValues2;

  @JsonKey(name: 'ParamValues3')
  final String? paramValues3;

  @JsonKey(name: 'ParamValues4')
  final String? paramValues4;

  @JsonKey(name: 'ParamValues5')
  final String? paramValues5;

  @JsonKey(name: 'ShopPhotoImage')
  final String? shopPhotoImage;

  @JsonKey(name: 'PicFileName')
  final String? picFileName;

  @JsonKey(name: 'PersonType')
  final int personType;

  @JsonKey(name: 'AccountCode')
  final String? accountCode;

  @JsonKey(name: 'RouteStep2')
  final String? routeStep2;

  @JsonKey(name: 'AuthorizeAmount')
  final double authorizeAmount;

  @JsonKey(name: 'DebtAmount')
  final double debtAmount;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Customer(
      this.customerCode,
      this.customerName,
      this.saleUnit,
      this.saleUnitName,
      this.primaryCode,
      this.address,
      this.tel,
      this.typeCode,
      this.taxNo,
      this.priceLevel,
      this.provinceID,
      this.proviceName,
      this.ampherID,
      this.ampherName,
      this.townID,
      this.townName,
      this.zip,
      this.lat,
      this.lon,
      this.branch,
      this.activeStatus,
      this.email,
      this.mobileNo,
      this.contactPerson,
      this.updateDate,
      this.applyDate,
      this.salespersonCode,
      this.salespersonName,
      this.tier,
      this.mobileSales,
      this.mapCode,
      this.birthDate,
      this.gender,
      this.agentCode,
      this.jtoken,
      this.paramValues1,
      this.paramValues2,
      this.paramValues3,
      this.paramValues4,
      this.paramValues5,
      this.shopPhotoImage,
      this.picFileName,
      this.personType,
      this.accountCode,
      this.routeStep2,
      this.authorizeAmount,
      this.debtAmount);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
