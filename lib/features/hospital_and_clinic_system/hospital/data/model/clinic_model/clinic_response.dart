import 'package:json_annotation/json_annotation.dart';
part 'clinic_response.g.dart';

@JsonSerializable()
class ClinicResponse {
  String? message;
  Data? data;
  int? code;

  ClinicResponse({this.message, this.data, this.code});
  factory ClinicResponse.fromJson(Map<String, dynamic> json) =>
      _$ClinicResponseFromJson(json);
}

@JsonSerializable()
class Data {
  Department? department;
  List<Clinics>? clinics;

  Data({this.department, this.clinics});
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
class Clinics {
  int? id;
  String? name;
  String? details;
  double? distance;
  Location? location;

  Clinics({this.id, this.name, this.details, this.distance, this.location});
  factory Clinics.fromJson(Map<String, dynamic> json) => _$ClinicsFromJson(json);
}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
