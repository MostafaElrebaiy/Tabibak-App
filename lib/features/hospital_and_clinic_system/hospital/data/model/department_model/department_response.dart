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
  String? details;
  @JsonKey(name: 'name_en')
  String? nameen;
  @JsonKey(name: 'name_ar')
  String? namear;
  String? image;

  Data(
      {this.id,
      this.details,
      this.nameen,
      this.namear,
    
      this.image});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  

}
