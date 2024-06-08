import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_best_deals_request.g.dart';

@JsonSerializable()
class PharmacyBestDealsRequest {
  final String? token;

  PharmacyBestDealsRequest({required this.token});
  Map<String,dynamic> toJson() => _$PharmacyBestDealsRequestToJson(this);

}
