import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.name,
  });
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
