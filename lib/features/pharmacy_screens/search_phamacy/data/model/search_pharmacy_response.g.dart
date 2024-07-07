// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'search_pharmacy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPharmacyResponse _$SearchPharmacyResponseFromJson(
        Map<String, dynamic> json) =>
    SearchPharmacyResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Pharmacies.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchPharmacyResponseToJson(
        SearchPharmacyResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Pharmacies _$PharmaciesFromJson(Map<String, dynamic> json) => Pharmacies(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
      image: json['image'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PharmaciesToJson(Pharmacies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
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
