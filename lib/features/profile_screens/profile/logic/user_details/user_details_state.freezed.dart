// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsResponse userDetailsResponse) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsResponse userDetailsResponse)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsResponse userDetailsResponse)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserDetailsStateLoading value) loading,
    required TResult Function(UserDetailsStateSuccess value) success,
    required TResult Function(UserDetailsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserDetailsStateLoading value)? loading,
    TResult? Function(UserDetailsStateSuccess value)? success,
    TResult? Function(UserDetailsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserDetailsStateLoading value)? loading,
    TResult Function(UserDetailsStateSuccess value)? success,
    TResult Function(UserDetailsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

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
    extends _$UserDetailsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserDetailsState.initial()';
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
    required TResult Function(UserDetailsResponse userDetailsResponse) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsResponse userDetailsResponse)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsResponse userDetailsResponse)? success,
    TResult Function(ErrorHandler errorHandler)? error,
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
    required TResult Function(UserDetailsStateLoading value) loading,
    required TResult Function(UserDetailsStateSuccess value) success,
    required TResult Function(UserDetailsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserDetailsStateLoading value)? loading,
    TResult? Function(UserDetailsStateSuccess value)? success,
    TResult? Function(UserDetailsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserDetailsStateLoading value)? loading,
    TResult Function(UserDetailsStateSuccess value)? success,
    TResult Function(UserDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserDetailsStateLoadingImplCopyWith<$Res> {
  factory _$$UserDetailsStateLoadingImplCopyWith(
          _$UserDetailsStateLoadingImpl value,
          $Res Function(_$UserDetailsStateLoadingImpl) then) =
      __$$UserDetailsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDetailsStateLoadingImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsStateLoadingImpl>
    implements _$$UserDetailsStateLoadingImplCopyWith<$Res> {
  __$$UserDetailsStateLoadingImplCopyWithImpl(
      _$UserDetailsStateLoadingImpl _value,
      $Res Function(_$UserDetailsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDetailsStateLoadingImpl implements UserDetailsStateLoading {
  const _$UserDetailsStateLoadingImpl();

  @override
  String toString() {
    return 'UserDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsResponse userDetailsResponse) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsResponse userDetailsResponse)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsResponse userDetailsResponse)? success,
    TResult Function(ErrorHandler errorHandler)? error,
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
    required TResult Function(UserDetailsStateLoading value) loading,
    required TResult Function(UserDetailsStateSuccess value) success,
    required TResult Function(UserDetailsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserDetailsStateLoading value)? loading,
    TResult? Function(UserDetailsStateSuccess value)? success,
    TResult? Function(UserDetailsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserDetailsStateLoading value)? loading,
    TResult Function(UserDetailsStateSuccess value)? success,
    TResult Function(UserDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserDetailsStateLoading implements UserDetailsState {
  const factory UserDetailsStateLoading() = _$UserDetailsStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserDetailsStateSuccessImplCopyWith<$Res> {
  factory _$$UserDetailsStateSuccessImplCopyWith(
          _$UserDetailsStateSuccessImpl value,
          $Res Function(_$UserDetailsStateSuccessImpl) then) =
      __$$UserDetailsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsResponse userDetailsResponse});
}

/// @nodoc
class __$$UserDetailsStateSuccessImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsStateSuccessImpl>
    implements _$$UserDetailsStateSuccessImplCopyWith<$Res> {
  __$$UserDetailsStateSuccessImplCopyWithImpl(
      _$UserDetailsStateSuccessImpl _value,
      $Res Function(_$UserDetailsStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetailsResponse = null,
  }) {
    return _then(_$UserDetailsStateSuccessImpl(
      null == userDetailsResponse
          ? _value.userDetailsResponse
          : userDetailsResponse // ignore: cast_nullable_to_non_nullable
              as UserDetailsResponse,
    ));
  }
}

/// @nodoc

class _$UserDetailsStateSuccessImpl implements UserDetailsStateSuccess {
  const _$UserDetailsStateSuccessImpl(this.userDetailsResponse);

  @override
  final UserDetailsResponse userDetailsResponse;

  @override
  String toString() {
    return 'UserDetailsState.success(userDetailsResponse: $userDetailsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateSuccessImpl &&
            (identical(other.userDetailsResponse, userDetailsResponse) ||
                other.userDetailsResponse == userDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsStateSuccessImplCopyWith<_$UserDetailsStateSuccessImpl>
      get copyWith => __$$UserDetailsStateSuccessImplCopyWithImpl<
          _$UserDetailsStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsResponse userDetailsResponse) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return success(userDetailsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsResponse userDetailsResponse)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return success?.call(userDetailsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsResponse userDetailsResponse)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userDetailsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserDetailsStateLoading value) loading,
    required TResult Function(UserDetailsStateSuccess value) success,
    required TResult Function(UserDetailsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserDetailsStateLoading value)? loading,
    TResult? Function(UserDetailsStateSuccess value)? success,
    TResult? Function(UserDetailsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserDetailsStateLoading value)? loading,
    TResult Function(UserDetailsStateSuccess value)? success,
    TResult Function(UserDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserDetailsStateSuccess implements UserDetailsState {
  const factory UserDetailsStateSuccess(
          final UserDetailsResponse userDetailsResponse) =
      _$UserDetailsStateSuccessImpl;

  UserDetailsResponse get userDetailsResponse;
  @JsonKey(ignore: true)
  _$$UserDetailsStateSuccessImplCopyWith<_$UserDetailsStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsStateErrorImplCopyWith<$Res> {
  factory _$$UserDetailsStateErrorImplCopyWith(
          _$UserDetailsStateErrorImpl value,
          $Res Function(_$UserDetailsStateErrorImpl) then) =
      __$$UserDetailsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$UserDetailsStateErrorImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsStateErrorImpl>
    implements _$$UserDetailsStateErrorImplCopyWith<$Res> {
  __$$UserDetailsStateErrorImplCopyWithImpl(_$UserDetailsStateErrorImpl _value,
      $Res Function(_$UserDetailsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$UserDetailsStateErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$UserDetailsStateErrorImpl implements UserDetailsStateError {
  const _$UserDetailsStateErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'UserDetailsState.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsStateErrorImplCopyWith<_$UserDetailsStateErrorImpl>
      get copyWith => __$$UserDetailsStateErrorImplCopyWithImpl<
          _$UserDetailsStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsResponse userDetailsResponse) success,
    required TResult Function(ErrorHandler errorHandler) error,
  }) {
    return error(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsResponse userDetailsResponse)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsResponse userDetailsResponse)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserDetailsStateLoading value) loading,
    required TResult Function(UserDetailsStateSuccess value) success,
    required TResult Function(UserDetailsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserDetailsStateLoading value)? loading,
    TResult? Function(UserDetailsStateSuccess value)? success,
    TResult? Function(UserDetailsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserDetailsStateLoading value)? loading,
    TResult Function(UserDetailsStateSuccess value)? success,
    TResult Function(UserDetailsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserDetailsStateError implements UserDetailsState {
  const factory UserDetailsStateError(final ErrorHandler errorHandler) =
      _$UserDetailsStateErrorImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$UserDetailsStateErrorImplCopyWith<_$UserDetailsStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
