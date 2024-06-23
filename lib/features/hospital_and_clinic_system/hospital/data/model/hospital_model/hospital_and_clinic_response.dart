import 'package:json_annotation/json_annotation.dart';
part 'hospital_and_clinic_response.g.dart';



@JsonSerializable()
class HospitalAndClinicResponse {
  String? message;
  List<HospitalAndClinicData>? data;
  int? code;

  HospitalAndClinicResponse({this.message, this.data, this.code});
  factory HospitalAndClinicResponse.fromJson(Map<String, dynamic> json) => _$HospitalAndClinicResponseFromJson(json);
  


}
@JsonSerializable()

class HospitalAndClinicData {
  int? id;
  String? name;
  String? details;
  String? image;
  Location? location;
  double? distance;


  HospitalAndClinicData({this.id, this.name, this.details, this.image, this.location, this.distance});
  factory HospitalAndClinicData.fromJson(Map<String, dynamic> json) => _$HospitalAndClinicDataFromJson(json);
  



  
}
@JsonSerializable()

class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  


  
}
