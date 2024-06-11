import 'package:freezed_annotation/freezed_annotation.dart';
part 'blood_bank_request.g.dart';

@JsonSerializable()
class BloodBankRequest {
  final String token;
  final double lat;
  final double lng;
  final String bloodType;

  BloodBankRequest(
      {required this.token,
      required this.lat,
      required this.lng,
      required this.bloodType});

  Map<String, dynamic> toJson() => _$BloodBankRequestToJson(this);
}
