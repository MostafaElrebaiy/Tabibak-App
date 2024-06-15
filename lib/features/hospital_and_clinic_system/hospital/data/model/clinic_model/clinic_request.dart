import 'package:json_annotation/json_annotation.dart';
part 'clinic_request.g.dart';

@JsonSerializable()
class ClinicRequest {
  final String token;
  final double lat;
  final double lng;
  final int departmentId;


  ClinicRequest(
      {required this.token,
      required this.lat,
      required this.departmentId,
      required this.lng});

  Map<String, dynamic> toJson() => _$ClinicRequestToJson(this);
}
