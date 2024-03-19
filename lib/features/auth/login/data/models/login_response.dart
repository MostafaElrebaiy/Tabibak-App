import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  // List<String>? data;
  @JsonKey(name: 'data')
  UserData? userData;
  int? code;
  LoginResponse({this.message, this.userData, this.code});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'user_details')
  UserDetails? userDetails;

  UserData({this.token, this.userDetails});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@JsonSerializable()
class UserDetails {
  int? id;
  String? name;
  String? email;
  String? image;

  UserDetails({this.id, this.name, this.email, this.image});
  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
