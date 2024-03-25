import 'package:json_annotation/json_annotation.dart';
part 'check_code_response.g.dart';

@JsonSerializable()
class CheckCodeResponse {
  String? message;
  List<String>? data;
  int? code;

  CheckCodeResponse({this.message, this.data, this.code});
  factory CheckCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckCodeResponseFromJson(json);
}
