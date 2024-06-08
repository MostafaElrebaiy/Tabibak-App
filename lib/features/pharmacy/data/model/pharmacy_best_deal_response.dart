import 'package:json_annotation/json_annotation.dart';
part 'pharmacy_best_deal_response.g.dart';

@JsonSerializable()
class PharmacyBestDealResponse {
  String? message;
  List<Data>? data;
  int? code;

  PharmacyBestDealResponse({this.message, this.data, this.code});

  factory PharmacyBestDealResponse.fromJson(Map<String, dynamic> json) =>
      _$PharmacyBestDealResponseFromJson(json);
}

@JsonSerializable()
class Data {
  int? id;
  String? name;
  int? price;
  int? count;
  String? details;
  String? image;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.price,
      this.count,
      this.details,
      this.image,
      this.createdAt,
      this.updatedAt});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
