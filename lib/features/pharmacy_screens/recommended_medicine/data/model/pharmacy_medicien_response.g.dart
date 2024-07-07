// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'pharmacy_medicien_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PharmacyMedicineResponse _$PharmacyMedicineResponseFromJson(
        Map<String, dynamic> json) =>
    PharmacyMedicineResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MedicinData.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PharmacyMedicineResponseToJson(
        PharmacyMedicineResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

MedicinData _$MedicinDataFromJson(Map<String, dynamic> json) => MedicinData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      details: json['details'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$MedicinDataToJson(MedicinData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'count': instance.count,
      'details': instance.details,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
