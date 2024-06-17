// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalResponse _$HospitalResponseFromJson(Map<String, dynamic> json) =>
    HospitalResponse(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HospitalResponseToJson(HospitalResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      department: json['department'] == null
          ? null
          : Department.fromJson(json['department'] as Map<String, dynamic>),
      hospitals: (json['hospitals'] as List<dynamic>?)
          ?.map((e) => Hospitals.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'department': instance.department,
      'hospitals': instance.hospitals,
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

Hospitals _$HospitalsFromJson(Map<String, dynamic> json) => Hospitals(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      details: json['details'] as String?,
      image: json['image'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HospitalsToJson(Hospitals instance) => <String, dynamic>{
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
