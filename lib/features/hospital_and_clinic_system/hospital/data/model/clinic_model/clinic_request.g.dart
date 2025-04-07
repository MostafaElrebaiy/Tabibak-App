// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicRequest _$ClinicRequestFromJson(Map<String, dynamic> json) =>
    ClinicRequest(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      departmentId: (json['departmentId'] as num).toInt(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$ClinicRequestToJson(ClinicRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'departmentId': instance.departmentId,
    };
