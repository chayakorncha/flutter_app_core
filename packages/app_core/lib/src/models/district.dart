import 'package:json_annotation/json_annotation.dart';

part 'district.g.dart';

// **************************************************************************
// เมื่อสร้าง class ของ JsonSerializable ใหม่ ให้ run command ใน terminal
// flutter pub run build_runner build --delete-conflicting-outputs
// **************************************************************************

@JsonSerializable(explicitToJson: true)
class District {
  District({
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

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
  Map<String, dynamic> toJson() => _$DistrictToJson(this);
}

@JsonSerializable()
class DataMessage {
  DataMessage({
    required this.sectionId,
    required this.sectionName,
    required this.status,
  });
  @JsonKey(name: 'Section_ID')
  final String sectionId;

  @JsonKey(name: 'Section_Name')
  final String sectionName;

  @JsonKey(name: 'Status')
  final String status;

  factory DataMessage.fromJson(Map<String, dynamic> json) =>
      _$DataMessageFromJson(json);
  Map<String, dynamic> toJson() => _$DataMessageToJson(this);
}
