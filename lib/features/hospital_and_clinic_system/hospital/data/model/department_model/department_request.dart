import 'package:json_annotation/json_annotation.dart';
part 'department_request.g.dart';


@JsonSerializable()
class DepartmentRequest {
  final String token;

  DepartmentRequest({required this.token});

  Map<String, dynamic> toJson() => _$DepartmentRequestToJson(this);
}
