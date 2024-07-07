// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element

part of 'check_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckCodeResponse _$CheckCodeResponseFromJson(Map<String, dynamic> json) =>
    CheckCodeResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CheckCodeResponseToJson(CheckCodeResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
