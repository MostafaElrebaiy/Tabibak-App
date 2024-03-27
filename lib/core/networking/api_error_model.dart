import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
<<<<<<< HEAD

  ApiErrorModel({
    required this.message,
=======
  final int? code;
  List<String>? data;

  ApiErrorModel({
    required this.message,
    this.data,
    this.code,
>>>>>>> 9393be7b508487fcd27c2a321fd2d207285452a5
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
