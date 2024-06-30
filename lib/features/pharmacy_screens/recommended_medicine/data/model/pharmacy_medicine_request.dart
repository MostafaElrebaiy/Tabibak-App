import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_medicine_request.g.dart';

@JsonSerializable()
class PharmacyMedicineRequest {
  final String token;

  PharmacyMedicineRequest({required this.token});

  Map<String, dynamic> toJson() => _$PharmacyMedicineRequestToJson(this);
}
