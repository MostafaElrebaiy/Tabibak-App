import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'reset_password_request_body.g.dart';

@JsonSerializable()
class ResetPasswordRequestBody {
  final String code;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  ResetPasswordRequestBody({
    required this.password,
    required this.passwordConfirmation,
    required this.code,
  });
  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
}
