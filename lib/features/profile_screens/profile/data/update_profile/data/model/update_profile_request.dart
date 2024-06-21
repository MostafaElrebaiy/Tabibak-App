import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  final String? name;
  final String? password;
  @JsonKey(name: 'password_confirmation')
  final String? passwordConfirmation;
  final String? image;

  UpdateProfileRequest({
    this.name,
    this.password,
    this.passwordConfirmation,
    this.image,
  });

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
