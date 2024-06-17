// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClinicResponse _$ClinicResponseFromJson(Map<String, dynamic> json) =>
    ClinicResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClinicResponseToJson(ClinicResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      clinics: (json['clinics'] as List<dynamic>?)
          ?.map((e) => Clinics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'department': instance.department,
      'clinics': instance.clinics,
    };

Department _$DepartmentFromJson(Map<String, dynamic> json) => Department(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$DepartmentToJson(Department instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
    };

Clinics _$ClinicsFromJson(Map<String, dynamic> json) => Clinics(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      details: json['details'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClinicsToJson(Clinics instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'details': instance.details,
      'image': instance.image,
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
