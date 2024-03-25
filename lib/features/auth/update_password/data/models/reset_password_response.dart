import 'package:json_annotation/json_annotation.dart';
part 'reset_password_response.g.dart';

@JsonSerializable()
class ResetPasswordResponse {
  String? message;
  List<String>? data;
  int? code;

  ResetPasswordResponse({this.message, this.data, this.code});
  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);
}
