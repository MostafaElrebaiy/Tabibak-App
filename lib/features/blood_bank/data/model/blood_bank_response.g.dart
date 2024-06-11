// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'blood_bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BloodBankResponse _$BloodBankResponseFromJson(Map<String, dynamic> json) =>
    BloodBankResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BloodBankResponseToJson(BloodBankResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      bloodTypes: json['bloodTypes'] == null
          ? null
          : BloodTypes.fromJson(json['bloodTypes'] as Map<String, dynamic>),
      bloodCenters: (json['bloodCenters'] as List<dynamic>?)
          ?.map((e) => BloodCenters.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'bloodTypes': instance.bloodTypes,
      'bloodCenters': instance.bloodCenters,
    };

BloodTypes _$BloodTypesFromJson(Map<String, dynamic> json) => BloodTypes(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BloodTypesToJson(BloodTypes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
    };

BloodCenters _$BloodCentersFromJson(Map<String, dynamic> json) => BloodCenters(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BloodCentersToJson(BloodCenters instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'distance': instance.distance,
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: json['x'] as String?,
      y: json['y'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
