// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'search_pharmacy_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPharmacyRequestBody _$SearchPharmacyRequestBodyFromJson(
        Map<String, dynamic> json) =>
    SearchPharmacyRequestBody(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      medicineName: json['medicineName'] as String,
    );

Map<String, dynamic> _$SearchPharmacyRequestBodyToJson(
        SearchPharmacyRequestBody instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'medicineName': instance.medicineName,
    };
