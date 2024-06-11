// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'blood_bank_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BloodBankRequest _$BloodBankRequestFromJson(Map<String, dynamic> json) =>
    BloodBankRequest(
      token: json['token'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      bloodType: json['bloodType'] as String,
    );

Map<String, dynamic> _$BloodBankRequestToJson(BloodBankRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lat': instance.lat,
      'lng': instance.lng,
      'bloodType': instance.bloodType,
    };
