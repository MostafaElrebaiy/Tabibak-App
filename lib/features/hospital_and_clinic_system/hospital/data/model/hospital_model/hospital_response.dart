import 'package:json_annotation/json_annotation.dart';
part 'hospital_response.g.dart';



@JsonSerializable()
class HospitalResponse {
  String? message;
  List<Data>? data;
  int? code;

  HospitalResponse({this.message, this.data, this.code});
  factory HospitalResponse.fromJson(Map<String, dynamic> json) => _$HospitalResponseFromJson(json);
  


}
@JsonSerializable()

class Data {
  int? id;
  String? name;
  String? details;
  String? image;
  Location? location;
  double? distance;


  Data({this.id, this.name, this.details, this.image, this.location, this.distance});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  



  
}
@JsonSerializable()

class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  


  
}
