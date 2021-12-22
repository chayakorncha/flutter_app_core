// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

District _$DistrictFromJson(Map<String, dynamic> json) => District(
      status: json['status'] as bool,
      statusCode: json['status_code'] as String,
      dataMessage: (json['data_message'] as List<dynamic>)
          .map((e) => DataMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String,
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'status': instance.status,
      'status_code': instance.statusCode,
      'data_message': instance.dataMessage.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

DataMessage _$DataMessageFromJson(Map<String, dynamic> json) => DataMessage(
      sectionId: json['Section_ID'] as String,
      sectionName: json['Section_Name'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$DataMessageToJson(DataMessage instance) =>
    <String, dynamic>{
      'Section_ID': instance.sectionId,
      'Section_Name': instance.sectionName,
      'Status': instance.status,
    };
