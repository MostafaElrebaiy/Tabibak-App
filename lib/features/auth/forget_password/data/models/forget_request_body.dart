import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_request_body.g.dart';

@JsonSerializable()
class ForgetRequestBody {
  final String email;

  ForgetRequestBody({
    required this.email,
  });
  Map<String, dynamic> toJson() => _$ForgetRequestBodyToJson(this);
}
