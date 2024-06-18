import 'package:json_annotation/json_annotation.dart';
part 'update_profile_response.g.dart';
@JsonSerializable()
class UpdateProfileResponse {
  String? message;
  List<String>? data;
  int? code;

  UpdateProfileResponse({this.message, this.data, this.code});

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);

}