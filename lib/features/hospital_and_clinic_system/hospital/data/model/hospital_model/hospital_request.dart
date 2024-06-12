import 'package:json_annotation/json_annotation.dart';
part 'hospital_request.g.dart';

@JsonSerializable()
class HospitalRequest {
  final String token;
  final double lat;
  final double lng;
  final String departmentName;

  HospitalRequest(
      {required this.token,
      required this.lat,
      required this.lng,
      required this.departmentName});

  Map<String, dynamic> toJson() => _$HospitalRequestToJson(this);
}

