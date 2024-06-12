// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicRequest _$ClinicRequestFromJson(Map<String, dynamic> json) =>
    ClinicRequest(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      departmentName: json['departmentName'] as String,
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$ClinicRequestToJson(ClinicRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'departmentName': instance.departmentName,
      'lng': instance.lng,
    };
