import 'package:json_annotation/json_annotation.dart';
part 'user_details_response.g.dart';
@JsonSerializable()
class UserDetailsRespons {
  String? message;
  Data? data;
  int? code;

  UserDetailsRespons({this.message, this.data, this.code});
}

@JsonSerializable()
class Data {
  int? id;
  String? name;
  String? email;
  String? image;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.createdAt,
      this.updatedAt});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}