// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequest _$UpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileRequest(
      name: json['name'] as String?,
      password: json['password'] as String?,
      passwordConfirmation: json['passwordConfirmation'] as String?,
      image: json['image'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$UpdateProfileRequestToJson(
        UpdateProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'password': instance.password,
      'passwordConfirmation': instance.passwordConfirmation,
      'image': instance.image,
      'token': instance.token,
    };
