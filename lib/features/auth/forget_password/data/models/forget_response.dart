import 'package:json_annotation/json_annotation.dart';
part 'forget_response.g.dart';

@JsonSerializable()
class ForgetResponse {
  String? message;
  List<String>? data;
  int? code;

  ForgetResponse({this.message, this.data, this.code});
  factory ForgetResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgetResponseFromJson(json);
}
