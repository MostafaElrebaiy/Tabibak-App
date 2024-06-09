import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_medicine_request.g.dart';

@JsonSerializable()
class SearchMedicineRequest {
  final String token;

  final String medicineName;

  SearchMedicineRequest(
      {required this.token,
      
      required this.medicineName});

  Map<String, dynamic> toJson() => _$SearchMedicineRequestToJson(this);
}
