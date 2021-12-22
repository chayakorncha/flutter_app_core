import 'package:app_core/app_core.dart';

part 'customer_login.g.dart';

@JsonSerializable()
class CustomerLogin {
  @JsonKey(name: 'primarycode')
  final String primaryCode;

  @JsonKey(name: 'companycode')
  final String companyCode;

  @JsonKey(name: 'saleunit')
  final String saleUnit;

  @JsonKey(name: 'customercode')
  final String customerCode;

  @JsonKey(name: 'customername')
  final String customerName;

  final String address;

  final String tel;

  final String typeCode;

  @JsonKey(name: 'taxno')
  final String taxNo;

  final String priceLevel;

  final String provinceId;

  final String provinceName;

  final String ampherId;

  final String ampherName;

  final String townId;

  final String townName;

  final String zip;

  final String lat;

  final String lon;

  final String branch;

  final String activeStatus;

  final String email;

  @JsonKey(name: 'mobileno')
  final String mobileNo;

  @JsonKey(name: 'contactperson')
  final String contactPerson;

  @JsonKey(name: 'updatedate')
  final String updateDate;

  @JsonKey(name: 'applydate')
  final String applyDate;

  @JsonKey(name: 'salespersonCode')
  final String salesPersonCode;

  @JsonKey(name: 'salesPersonName')
  final String salespersonName;

  @JsonKey(name: 'saleuniTName')
  final String saleUnitName;

  final String tier;

  @JsonKey(name: 'mobilESales')
  final String mobileSales;

  final String mapCode;

  final String birthDate;

  final String gender;

  final String agentCode;

  final String jtoken;

  final String paramValues1;

  final String paramValues2;

  final String paramValues3;

  final String paramValues4;

  final String paramValues5;

  final String shopPhotoImage;

  final String picFileName;

  final int personType;

  final String accountCode;

  final String routeStep2;

  final int authorizeAmount;

  final int debtAmount;

  final String activeDc;

  final String activeDcName;

  final String activeDeliveryRoute;

  final String activeSaleCode;

  final String activeSalesAreaCode;

  CustomerLogin(
      this.primaryCode,
      this.companyCode,
      this.saleUnit,
      this.customerCode,
      this.customerName,
      this.address,
      this.tel,
      this.typeCode,
      this.taxNo,
      this.priceLevel,
      this.provinceId,
      this.provinceName,
      this.ampherId,
      this.ampherName,
      this.townId,
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
      this.salesPersonCode,
      this.salespersonName,
      this.saleUnitName,
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
      this.debtAmount,
      this.activeDc,
      this.activeDcName,
      this.activeDeliveryRoute,
      this.activeSaleCode,
      this.activeSalesAreaCode);

  factory CustomerLogin.fromJson(Map<String, dynamic> json) =>
      _$CustomerLoginFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerLoginToJson(this);
}
