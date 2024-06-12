// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalRequest _$HospitalRequestFromJson(Map<String, dynamic> json) =>
    HospitalRequest(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      departmentName: json['departmentName'] as String,
    );

Map<String, dynamic> _$HospitalRequestToJson(HospitalRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'departmentName': instance.departmentName,
    };
