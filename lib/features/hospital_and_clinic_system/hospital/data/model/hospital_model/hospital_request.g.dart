// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'hospital_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalRequest _$HospitalRequestFromJson(Map<String, dynamic> json) =>
    HospitalRequest(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      departmentId: (json['departmentId'] as num).toInt(),
    );

Map<String, dynamic> _$HospitalRequestToJson(HospitalRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'departmentId': instance.departmentId,
    };
