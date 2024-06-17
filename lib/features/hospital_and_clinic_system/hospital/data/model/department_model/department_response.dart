import 'package:json_annotation/json_annotation.dart';
part 'department_response.g.dart';


@JsonSerializable()
class DepartmentResponse {
  String? message;
  List<Data>? data;
  int? code;

  DepartmentResponse({this.message, this.data, this.code});
  factory DepartmentResponse.fromJson(Map<String, dynamic> json) =>
      _$DepartmentResponseFromJson(json);

}


@JsonSerializable()
class Data {
  int? id;
  String? name;
  String? details;
  @JsonKey(name: 'place_type')
  String? placeType;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  String? image;

  Data(
      {this.id,
      this.name,
      this.details,
      this.placeType,
      this.createdAt,
      this.updatedAt,
      this.image});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  

}
