import 'package:json_annotation/json_annotation.dart';
part 'hospital_request.g.dart';

@JsonSerializable()
class HospitalRequest {
  final String token;
  final double lat;
  final double lng;
  final int departmentId;
  HospitalRequest(
      {required this.token,
      required this.lat,
      required this.lng,
      required this.departmentId});

  Map<String, dynamic> toJson() => _$HospitalRequestToJson(this);
}
