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
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchPharmacyResponseToJson(
        SearchPharmacyResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      medicine: json['medicine'] == null
          ? null
          : Medicine.fromJson(json['medicine'] as Map<String, dynamic>),
      pharmacies: (json['pharmacies'] as List<dynamic>?)
          ?.map((e) => Pharmacies.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'medicine': instance.medicine,
      'pharmacies': instance.pharmacies,
    };

Medicine _$MedicineFromJson(Map<String, dynamic> json) => Medicine(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$MedicineToJson(Medicine instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
    };

Pharmacies _$PharmaciesFromJson(Map<String, dynamic> json) => Pharmacies(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PharmaciesToJson(Pharmacies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
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
