// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetResponse _$ForgetResponseFromJson(Map<String, dynamic> json) =>
    ForgetResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ForgetResponseToJson(ForgetResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'code': instance.code,
    };
