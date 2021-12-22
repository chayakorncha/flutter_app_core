import 'package:json_annotation/json_annotation.dart';

part 'town.g.dart';

// **************************************************************************
// เมื่อสร้าง class ของ JsonSerializable ใหม่ ให้ run command ใน terminal
// flutter pub run build_runner build --delete-conflicting-outputs
// **************************************************************************

@JsonSerializable(explicitToJson: true)
class Town {
  Town({
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

  factory Town.fromJson(Map<String, dynamic> json) => _$TownFromJson(json);
  Map<String, dynamic> toJson() => _$TownToJson(this);
}

@JsonSerializable()
class DataMessage {
  DataMessage({
    required this.townId,
    required this.townName,
    required this.status,
    required this.zipCode,
  });
  @JsonKey(name: 'Town_ID')
  final String townId;

  @JsonKey(name: 'Town_Name')
  final String townName;

  final String status;

  @JsonKey(name: 'ZipCode')
  final String zipCode;

  factory DataMessage.fromJson(Map<String, dynamic> json) =>
      _$DataMessageFromJson(json);
  Map<String, dynamic> toJson() => _$DataMessageToJson(this);
}
