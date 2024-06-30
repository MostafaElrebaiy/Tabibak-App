import 'package:json_annotation/json_annotation.dart';
part 'search_pharmacy_response.g.dart';

@JsonSerializable()
class SearchPharmacyResponse {
  String? message;
  List<Pharmacies>? data;
  int? code;

  SearchPharmacyResponse({this.message, this.data, this.code});

  factory SearchPharmacyResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPharmacyResponseFromJson(json);
}

@JsonSerializable()
class Pharmacies {
  int? id;
  String? name;
  String? details;
  String? image;
  Location? location;
  double? distance;

  Pharmacies(
      {this.id,
      this.name,
      this.details,
      this.image,
      this.location,
      this.distance});
      factory Pharmacies.fromJson(Map<String, dynamic> json) => _$PharmaciesFromJson(json);

}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

}
