import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_bank_response.g.dart';

@JsonSerializable()
class BloodBankResponse {
  String? message;
  BloodBankData? data;
  int? code;

  BloodBankResponse({this.message, this.data, this.code});

  factory BloodBankResponse.fromJson(Map<String, dynamic> json) =>
      _$BloodBankResponseFromJson(json);
}

@JsonSerializable()
class BloodBankData {
  @JsonKey(name: 'blood_types')
  BloodTypes? bloodTypes;
  @JsonKey(name: 'blood_centers')
  List<BloodCenters>? bloodCenters;

  BloodBankData({this.bloodTypes, this.bloodCenters});
  factory BloodBankData.fromJson(Map<String, dynamic> json) =>
      _$BloodBankDataFromJson(json);
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
  String? image;
  double? distance;
  Location? location;

  BloodCenters(
      {this.id, this.name, this.address, this.distance, this.location, this.image});

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
