import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_bank_response.g.dart';

@JsonSerializable()
class BloodBankResponse {
  String? message;
  Data? data;
  int? code;

  BloodBankResponse({this.message, this.data, this.code});

  factory BloodBankResponse.fromJson(Map<String, dynamic> json) =>
      _$BloodBankResponseFromJson(json);
}


@JsonSerializable()
class Data {
  @JsonKey(name: 'blood_types')
  BloodTypes? bloodTypes;
  @JsonKey(name: 'blood_centers')
  List<BloodCenters>? bloodCenters;

  Data({this.bloodTypes, this.bloodCenters});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class BloodTypes {
  int? id;
  String? name;
  int? count;

  BloodTypes({this.id, this.name, this.count});
  factory BloodTypes.fromJson(Map<String, dynamic> json) =>
      _$BloodTypesFromJson(json);
}

@JsonSerializable()
class BloodCenters {
  int? id;
  String? name;
  String? address;
  double? distance;
  Location? location;

  BloodCenters(
      {this.id, this.name, this.address, this.distance, this.location});

  factory BloodCenters.fromJson(Map<String, dynamic> json) =>
      _$BloodCentersFromJson(json);
}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
