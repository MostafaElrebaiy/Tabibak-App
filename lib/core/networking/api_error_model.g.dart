// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
<<<<<<< HEAD
=======
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
      code: json['code'] as int?,
>>>>>>> 9393be7b508487fcd27c2a321fd2d207285452a5
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
<<<<<<< HEAD
=======
      'code': instance.code,
      'data': instance.data,
>>>>>>> 9393be7b508487fcd27c2a321fd2d207285452a5
    };
