// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_best_deal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PharmacyBestDealResponse _$PharmacyBestDealResponseFromJson(
        Map<String, dynamic> json) =>
    PharmacyBestDealResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PharmacyBestDealResponseToJson(
        PharmacyBestDealResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      details: json['details'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'count': instance.count,
      'details': instance.details,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
