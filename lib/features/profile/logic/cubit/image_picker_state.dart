import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_picker_state.freezed.dart';
@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.initial() = _Initial;
}
