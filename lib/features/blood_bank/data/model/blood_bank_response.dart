import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_bank_response.g.dart';

@JsonSerializable()
class BloodBankResponse {
  String? message;
  List<BloodBankCenter>? data;
  int? code;

  BloodBankResponse({this.message, this.data, this.code});
  factory BloodBankResponse.fromJson(Map<String, dynamic> json) =>
      _$BloodBankResponseFromJson(json);
}

@JsonSerializable()
class BloodBankCenter {
  int? id;
  String? name;
  String? address;
  String? image;
  Location? location;
  double? distance;

  BloodBankCenter(
      {this.id,
      this.name,
      this.address,
      this.image,
      this.location,
      this.distance});
  factory BloodBankCenter.fromJson(Map<String, dynamic> json) => _$BloodBankCenterFromJson(json);
}

@JsonSerializable()
class Location {
  String? x;
  String? y;

  Location({this.x, this.y});
  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
