import 'package:json_annotation/json_annotation.dart';

part 'province.g.dart';

// **************************************************************************
// เมื่อสร้าง class ของ JsonSerializable ใหม่ ให้ run command ใน terminal
// flutter pub run build_runner build --delete-conflicting-outputs
// **************************************************************************

@JsonSerializable(explicitToJson: true)
class Province {
  Province({
    required this.status,
    required this.statusCode,
    required this.dataMessage,
    required this.error,
  });

  final bool status;

  @JsonKey(name: 'status_code')
  final String statusCode;

  @JsonKey(name: 'data_message')
  final List<DataMessage> dataMessage;

  final String error;

  factory Province.fromJson(Map<String, dynamic> json) =>
      _$ProvinceFromJson(json);
  Map<String, dynamic> toJson() => _$ProvinceToJson(this);
}

@JsonSerializable()
class DataMessage {
  DataMessage({
    required this.departmentId,
    required this.departmentName,
    required this.status,
  });

  @JsonKey(name: 'Department_ID')
  final String departmentId;

  @JsonKey(name: 'Department_Name')
  final String departmentName;

  @JsonKey(name: 'Status')
  final String status;

  factory DataMessage.fromJson(Map<String, dynamic> json) =>
      _$DataMessageFromJson(json);

  Map<String, dynamic> toJson() => _$DataMessageToJson(this);
}
