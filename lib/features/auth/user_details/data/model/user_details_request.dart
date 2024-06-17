import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_details_request.g.dart';

@JsonSerializable()
class UserDetailsRequest {
  final String token;

  UserDetailsRequest({required this.token});

  Map<String, dynamic> toJson() => _$UserDetailsRequestToJson(this);
}
