import 'package:json_annotation/json_annotation.dart';
part 'search_pharmacy_response.g.dart';

@JsonSerializable()
class SearchPharmacyResponse {
  String? message;
  Data? data;
  int? code;

  SearchPharmacyResponse({this.message, this.data, this.code});

  factory SearchPharmacyResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPharmacyResponseFromJson(json);
}

@JsonSerializable()
class Data {
  Medicine? medicine;
  List<Pharmacies>? pharmacies;

  Data({this.medicine, this.pharmacies});

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}

@JsonSerializable()
class Medicine {
  int? id;
  String? name;
  String? details;

  Medicine({this.id, this.name, this.details});
  factory Medicine.fromJson(Map<String, dynamic> json) =>
      _$MedicineFromJson(json);
}

@JsonSerializable()
class Pharmacies {
  int? id;
  String? name;
  String? details;
  double? distance;
  Location? location;

  Pharmacies({this.id, this.name, this.details, this.distance, this.location});
  factory Pharmacies.fromJson(Map<String, dynamic> json) =>
      _$PharmaciesFromJson(json);
}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
