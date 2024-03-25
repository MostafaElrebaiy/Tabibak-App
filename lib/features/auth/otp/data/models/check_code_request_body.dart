import 'package:freezed_annotation/freezed_annotation.dart';
part 'check_code_request_body.g.dart';

@JsonSerializable()
class CheckCodeRequestBody {
  final String code;

  CheckCodeRequestBody({
    required this.code,
  });
  Map<String, dynamic> toJson() => _$CheckCodeRequestBodyToJson(this);
}
