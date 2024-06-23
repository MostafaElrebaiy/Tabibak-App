import 'package:json_annotation/json_annotation.dart';
part 'pharmacy_medicien_response.g.dart';

@JsonSerializable()
class PharmacyMedicineResponse {
  String? message;
  List<MedicinData>? data;
  int? code;

  PharmacyMedicineResponse({this.message, this.data, this.code});

  factory PharmacyMedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$PharmacyMedicineResponseFromJson(json);
}

@JsonSerializable()
class MedicinData {
  int? id;
  String? name;
  int? price;
  int? count;
  String? details;
  String? image;
  String? createdAt;
  String? updatedAt;

  MedicinData(
      {this.id,this.name,
      this.price,
      this.count,
      this.details,
      this.image,
      this.createdAt,
      this.updatedAt});

factory MedicinData.fromJson(Map<String, dynamic> json) =>
      _$MedicinDataFromJson(json);

  
  }

