import 'package:json_annotation/json_annotation.dart';
part 'clinic_request.g.dart';
@JsonSerializable()
class ClinicRequest {
  final String token;
  final double lat;
  final String departmentName;
  final double lng;

  ClinicRequest(
      {required this.token,
      required this.lat,
      required this.departmentName,
      required this.lng
      });

  Map<String, dynamic> toJson() => _$ClinicRequestToJson(this);
}
