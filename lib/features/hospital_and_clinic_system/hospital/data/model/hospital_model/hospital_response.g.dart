// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalResponse _$HospitalResponseFromJson(Map<String, dynamic> json) =>
    HospitalResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HospitalResponseToJson(HospitalResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
      image: json['image'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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
