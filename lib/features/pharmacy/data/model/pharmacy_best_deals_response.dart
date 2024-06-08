import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_best_deals_response.g.dart';

@JsonSerializable()
class PharmacyBestDealsResponce {
  String? message;
  List<Data>? data;
  int? code;

  PharmacyBestDealsResponce({this.message, this.data, this.code});
  factory PharmacyBestDealsResponce.fromJson(Map<String, dynamic> json) =>
      _$PharmacyBestDealsResponceFromJson(json);
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
