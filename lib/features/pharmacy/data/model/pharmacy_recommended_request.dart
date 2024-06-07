import 'package:freezed_annotation/freezed_annotation.dart';
part 'pharmacy_recommended_request.g.dart';

@JsonSerializable()
class PharmacyRecommendedRequest {
  final String token;


  PharmacyRecommendedRequest(
      {required this.token,
     });

  Map<String, dynamic> toJson() => _$PharmacyRecommendedRequestToJson(this);
}
