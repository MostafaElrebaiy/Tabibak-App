import 'package:json_annotation/json_annotation.dart';
part 'hospital_response.g.dart';

@JsonSerializable()
class HospitalResponse {
  String? message;
  Data? data;
  int? code;

  HospitalResponse({this.message, this.data, this.code});
  factory HospitalResponse.fromJson(Map<String, dynamic> json) =>
      _$HospitalResponseFromJson(json);
}

@JsonSerializable()
class Data {
  Department? department;
  List<Hospitals>? hospitals;

  Data({this.department, this.hospitals});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Department {
  int? id;
  String? name;
  String? details;

  Department({this.id, this.name, this.details});
  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

@JsonSerializable()
class Hospitals {
  int? id;
  String? name;
  String? details;
  double? distance;
  Location? location;

  Hospitals({this.id, this.name, this.details, this.distance, this.location});
  factory Hospitals.fromJson(Map<String, dynamic> json) =>
      _$HospitalsFromJson(json);
}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
