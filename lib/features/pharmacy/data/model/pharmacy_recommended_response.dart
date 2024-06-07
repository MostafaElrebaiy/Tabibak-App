import 'package:json_annotation/json_annotation.dart';
part 'pharmacy_recommended_response.g.dart';

@JsonSerializable()
class PharmacyRecommendedResponse {
  String? message;
  List<Data>? data;
  int? code;

  PharmacyRecommendedResponse({this.message, this.data, this.code});

  factory PharmacyRecommendedResponse.fromJson(Map<String, dynamic> json) =>
      _$PharmacyRecommendedResponseFromJson(json);
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
      {this.id,this.name,
      this.price,
      this.count,
      this.details,
      this.image,
      this.createdAt,
      this.updatedAt});

factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  
  }

