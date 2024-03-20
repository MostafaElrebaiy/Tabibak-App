import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_view_state.freezed.dart';
@freezed
class EditProfileViewState with _$EditProfileViewState {
  const factory EditProfileViewState.initial() = _Initial;
  const factory EditProfileViewState.pickedImage({required File image}) = PickedImage;
}
