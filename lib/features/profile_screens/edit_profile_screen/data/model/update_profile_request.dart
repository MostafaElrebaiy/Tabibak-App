import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabibk/features/profile_screens/edit_profile_screen/data/model/file_converter.dart';
part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  final String? name;
  final String? password;
  @JsonKey(name: 'password_confirmation')
  final String? passwordConfirmation;
  @FileConverter()
  @JsonKey(name: 'image')
  final File? image;

  UpdateProfileRequest({
    this.name,
    this.password,
    this.passwordConfirmation,
    this.image,
  });

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
