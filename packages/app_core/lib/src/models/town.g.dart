// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'town.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Town _$TownFromJson(Map<String, dynamic> json) => Town(
      status: json['status'] as bool,
      statusCode: json['status_code'] as String,
      dataMessage: (json['data_message'] as List<dynamic>)
          .map((e) => DataMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String,
    );

Map<String, dynamic> _$TownToJson(Town instance) => <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'data_message': instance.dataMessage.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

DataMessage _$DataMessageFromJson(Map<String, dynamic> json) => DataMessage(
      townId: json['Town_ID'] as String,
      townName: json['Town_Name'] as String,
      status: json['status'] as String,
      zipCode: json['ZipCode'] as String,
    );

Map<String, dynamic> _$DataMessageToJson(DataMessage instance) =>
    <String, dynamic>{
      'Town_ID': instance.townId,
      'Town_Name': instance.townName,
      'status': instance.status,
      'ZipCode': instance.zipCode,
    };
