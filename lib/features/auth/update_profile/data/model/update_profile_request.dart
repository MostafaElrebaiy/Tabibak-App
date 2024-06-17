import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
   String? name;
   String? password;
   String? passwordConfirmation;
   String? image;
   final String token;

  UpdateProfileRequest(
      { this.name,
       this.password,
       this.passwordConfirmation,
       this.image,
      required this.token});  
  

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
