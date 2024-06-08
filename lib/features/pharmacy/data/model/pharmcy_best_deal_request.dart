import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmcy_best_deal_request.g.dart';

@JsonSerializable()
class PharmacyBestDealRequest {
  final String token;

  PharmacyBestDealRequest({required this.token});

  Map<String, dynamic> toJson() => _$PharmacyBestDealRequestToJson(this);
}
