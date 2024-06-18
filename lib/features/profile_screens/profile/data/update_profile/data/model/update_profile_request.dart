import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  final String? name;
  final String? password;
  final String? passwordConfirmation;
  final String? image;
  final String token;

  UpdateProfileRequest(
      {this.name,
      this.password,
      this.passwordConfirmation,
      this.image,
      required this.token});

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
