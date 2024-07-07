// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'blood_bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BloodBankResponse _$BloodBankResponseFromJson(Map<String, dynamic> json) =>
    BloodBankResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BloodBankCenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BloodBankResponseToJson(BloodBankResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

BloodBankCenter _$BloodBankCenterFromJson(Map<String, dynamic> json) =>
    BloodBankCenter(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      image: json['image'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BloodBankCenterToJson(BloodBankCenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'image': instance.image,
      'location': instance.location,
      'distance': instance.distance,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: json['x'] as String?,
      y: json['y'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
