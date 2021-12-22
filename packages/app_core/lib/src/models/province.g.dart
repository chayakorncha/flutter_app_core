// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Province _$ProvinceFromJson(Map<String, dynamic> json) => Province(
      status: json['status'] as bool,
      statusCode: json['status_code'] as String,
      dataMessage: (json['data_message'] as List<dynamic>)
          .map((e) => DataMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String,
    );

Map<String, dynamic> _$ProvinceToJson(Province instance) => <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'data_message': instance.dataMessage.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

DataMessage _$DataMessageFromJson(Map<String, dynamic> json) => DataMessage(
      departmentId: json['Department_ID'] as String,
      departmentName: json['Department_Name'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$DataMessageToJson(DataMessage instance) =>
    <String, dynamic>{
      'Department_ID': instance.departmentId,
      'Department_Name': instance.departmentName,
      'Status': instance.status,
    };
