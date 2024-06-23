
import 'package:json_annotation/json_annotation.dart';
part 'search_medicine_response.g.dart';

@JsonSerializable()
class SearchMedicineResponse {
  String? message;
  List<SearchMdicinData>? data;
  int? code;

  SearchMedicineResponse({this.message, this.data, this.code});

  factory SearchMedicineResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchMedicineResponseFromJson(json);

}
@JsonSerializable()
class SearchMdicinData {
  int? id;
  String? name;
  int? price;
  int? count;
  String? details;
  String? image;
  String? createdAt;
  String? updatedAt;

  SearchMdicinData(
      {this.id,
      this.name,
      this.price,
      this.count,
      this.details,
      this.image,
      this.createdAt,
      this.updatedAt});
  
factory SearchMdicinData.fromJson(Map<String, dynamic> json) =>
      _$SearchMdicinDataFromJson(json);
  
}