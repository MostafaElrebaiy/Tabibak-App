// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdateProfileStateLoading value) loading,
    required TResult Function(UpdateProfileStateSuccess value) success,
    required TResult Function(UpdateProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdateProfileStateLoading value)? loading,
    TResult? Function(UpdateProfileStateSuccess value)? success,
    TResult? Function(UpdateProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdateProfileStateLoading value)? loading,
    TResult Function(UpdateProfileStateSuccess value)? success,
    TResult Function(UpdateProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UpdateProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdateProfileStateLoading value) loading,
    required TResult Function(UpdateProfileStateSuccess value) success,
    required TResult Function(UpdateProfileStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdateProfileStateLoading value)? loading,
    TResult? Function(UpdateProfileStateSuccess value)? success,
    TResult? Function(UpdateProfileStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdateProfileStateLoading value)? loading,
    TResult Function(UpdateProfileStateSuccess value)? success,
    TResult Function(UpdateProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UpdateProfileStateLoadingImplCopyWith<$Res> {
  factory _$$UpdateProfileStateLoadingImplCopyWith(
          _$UpdateProfileStateLoadingImpl value,
          $Res Function(_$UpdateProfileStateLoadingImpl) then) =
      __$$UpdateProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileStateLoadingImpl>
    implements _$$UpdateProfileStateLoadingImplCopyWith<$Res> {
  __$$UpdateProfileStateLoadingImplCopyWithImpl(
      _$UpdateProfileStateLoadingImpl _value,
      $Res Function(_$UpdateProfileStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateProfileStateLoadingImpl implements UpdateProfileStateLoading {
  const _$UpdateProfileStateLoadingImpl();

  @override
  String toString() {
    return 'UpdateProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdateProfileStateLoading value) loading,
    required TResult Function(UpdateProfileStateSuccess value) success,
    required TResult Function(UpdateProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdateProfileStateLoading value)? loading,
    TResult? Function(UpdateProfileStateSuccess value)? success,
    TResult? Function(UpdateProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdateProfileStateLoading value)? loading,
    TResult Function(UpdateProfileStateSuccess value)? success,
    TResult Function(UpdateProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileStateLoading implements UpdateProfileState {
  const factory UpdateProfileStateLoading() = _$UpdateProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateProfileStateSuccessImplCopyWith<$Res> {
  factory _$$UpdateProfileStateSuccessImplCopyWith(
          _$UpdateProfileStateSuccessImpl value,
          $Res Function(_$UpdateProfileStateSuccessImpl) then) =
      __$$UpdateProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileResponse updateProfileResponse});
}

/// @nodoc
class __$$UpdateProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileStateSuccessImpl>
    implements _$$UpdateProfileStateSuccessImplCopyWith<$Res> {
  __$$UpdateProfileStateSuccessImplCopyWithImpl(
      _$UpdateProfileStateSuccessImpl _value,
      $Res Function(_$UpdateProfileStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateProfileResponse = null,
  }) {
    return _then(_$UpdateProfileStateSuccessImpl(
      null == updateProfileResponse
          ? _value.updateProfileResponse
          : updateProfileResponse // ignore: cast_nullable_to_non_nullable
              as UpdateProfileResponse,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateSuccessImpl implements UpdateProfileStateSuccess {
  const _$UpdateProfileStateSuccessImpl(this.updateProfileResponse);

  @override
  final UpdateProfileResponse updateProfileResponse;

  @override
  String toString() {
    return 'UpdateProfileState.success(updateProfileResponse: $updateProfileResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateSuccessImpl &&
            (identical(other.updateProfileResponse, updateProfileResponse) ||
                other.updateProfileResponse == updateProfileResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateProfileResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateSuccessImplCopyWith<_$UpdateProfileStateSuccessImpl>
      get copyWith => __$$UpdateProfileStateSuccessImplCopyWithImpl<
          _$UpdateProfileStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return success(updateProfileResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(updateProfileResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(updateProfileResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdateProfileStateLoading value) loading,
    required TResult Function(UpdateProfileStateSuccess value) success,
    required TResult Function(UpdateProfileStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdateProfileStateLoading value)? loading,
    TResult? Function(UpdateProfileStateSuccess value)? success,
    TResult? Function(UpdateProfileStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdateProfileStateLoading value)? loading,
    TResult Function(UpdateProfileStateSuccess value)? success,
    TResult Function(UpdateProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileStateSuccess implements UpdateProfileState {
  const factory UpdateProfileStateSuccess(
          final UpdateProfileResponse updateProfileResponse) =
      _$UpdateProfileStateSuccessImpl;

  UpdateProfileResponse get updateProfileResponse;
  @JsonKey(ignore: true)
  _$$UpdateProfileStateSuccessImplCopyWith<_$UpdateProfileStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileStateErrorImplCopyWith<$Res> {
  factory _$$UpdateProfileStateErrorImplCopyWith(
          _$UpdateProfileStateErrorImpl value,
          $Res Function(_$UpdateProfileStateErrorImpl) then) =
      __$$UpdateProfileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UpdateProfileStateErrorImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res,
        _$UpdateProfileStateErrorImpl>
    implements _$$UpdateProfileStateErrorImplCopyWith<$Res> {
  __$$UpdateProfileStateErrorImplCopyWithImpl(
      _$UpdateProfileStateErrorImpl _value,
      $Res Function(_$UpdateProfileStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UpdateProfileStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileStateErrorImpl implements UpdateProfileStateError {
  const _$UpdateProfileStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UpdateProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileStateErrorImplCopyWith<_$UpdateProfileStateErrorImpl>
      get copyWith => __$$UpdateProfileStateErrorImplCopyWithImpl<
          _$UpdateProfileStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse updateProfileResponse)
        success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse updateProfileResponse)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UpdateProfileStateLoading value) loading,
    required TResult Function(UpdateProfileStateSuccess value) success,
    required TResult Function(UpdateProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UpdateProfileStateLoading value)? loading,
    TResult? Function(UpdateProfileStateSuccess value)? success,
    TResult? Function(UpdateProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UpdateProfileStateLoading value)? loading,
    TResult Function(UpdateProfileStateSuccess value)? success,
    TResult Function(UpdateProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileStateError implements UpdateProfileState {
  const factory UpdateProfileStateError({required final String error}) =
      _$UpdateProfileStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$UpdateProfileStateErrorImplCopyWith<_$UpdateProfileStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
