import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  List<String>? data;
  int? code;

  SignUpResponse({this.message, this.data, this.code});
  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}
