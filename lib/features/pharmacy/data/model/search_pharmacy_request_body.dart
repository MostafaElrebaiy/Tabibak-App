import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_pharmacy_request_body.g.dart';

@JsonSerializable()
class SearchPharmacyRequestBody {
  final String token;
  final double lat;
  final double lng;
  final String medicineName;

  SearchPharmacyRequestBody({required this.token, required this.lat, required this.lng, required this.medicineName});

 
  Map<String, dynamic> toJson() => _$SearchPharmacyRequestBodyToJson(this);
}
