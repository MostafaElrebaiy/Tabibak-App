// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clinic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClinicState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ClinicLoading<T> value) loading,
    required TResult Function(ClinicSuccess<T> value) success,
    required TResult Function(ClinicError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ClinicLoading<T> value)? loading,
    TResult? Function(ClinicSuccess<T> value)? success,
    TResult? Function(ClinicError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ClinicLoading<T> value)? loading,
    TResult Function(ClinicSuccess<T> value)? success,
    TResult Function(ClinicError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClinicStateCopyWith<T, $Res> {
  factory $ClinicStateCopyWith(
          ClinicState<T> value, $Res Function(ClinicState<T>) then) =
      _$ClinicStateCopyWithImpl<T, $Res, ClinicState<T>>;
}

/// @nodoc
class _$ClinicStateCopyWithImpl<T, $Res, $Val extends ClinicState<T>>
    implements $ClinicStateCopyWith<T, $Res> {
  _$ClinicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$ClinicStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ClinicState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ClinicLoading<T> value) loading,
    required TResult Function(ClinicSuccess<T> value) success,
    required TResult Function(ClinicError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ClinicLoading<T> value)? loading,
    TResult? Function(ClinicSuccess<T> value)? success,
    TResult? Function(ClinicError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ClinicLoading<T> value)? loading,
    TResult Function(ClinicSuccess<T> value)? success,
    TResult Function(ClinicError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ClinicState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ClinicLoadingImplCopyWith<T, $Res> {
  factory _$$ClinicLoadingImplCopyWith(_$ClinicLoadingImpl<T> value,
          $Res Function(_$ClinicLoadingImpl<T>) then) =
      __$$ClinicLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ClinicLoadingImplCopyWithImpl<T, $Res>
    extends _$ClinicStateCopyWithImpl<T, $Res, _$ClinicLoadingImpl<T>>
    implements _$$ClinicLoadingImplCopyWith<T, $Res> {
  __$$ClinicLoadingImplCopyWithImpl(_$ClinicLoadingImpl<T> _value,
      $Res Function(_$ClinicLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClinicLoadingImpl<T> implements ClinicLoading<T> {
  const _$ClinicLoadingImpl();

  @override
  String toString() {
    return 'ClinicState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClinicLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ClinicLoading<T> value) loading,
    required TResult Function(ClinicSuccess<T> value) success,
    required TResult Function(ClinicError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ClinicLoading<T> value)? loading,
    TResult? Function(ClinicSuccess<T> value)? success,
    TResult? Function(ClinicError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ClinicLoading<T> value)? loading,
    TResult Function(ClinicSuccess<T> value)? success,
    TResult Function(ClinicError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ClinicLoading<T> implements ClinicState<T> {
  const factory ClinicLoading() = _$ClinicLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ClinicSuccessImplCopyWith<T, $Res> {
  factory _$$ClinicSuccessImplCopyWith(_$ClinicSuccessImpl<T> value,
          $Res Function(_$ClinicSuccessImpl<T>) then) =
      __$$ClinicSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ClinicSuccessImplCopyWithImpl<T, $Res>
    extends _$ClinicStateCopyWithImpl<T, $Res, _$ClinicSuccessImpl<T>>
    implements _$$ClinicSuccessImplCopyWith<T, $Res> {
  __$$ClinicSuccessImplCopyWithImpl(_$ClinicSuccessImpl<T> _value,
      $Res Function(_$ClinicSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ClinicSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ClinicSuccessImpl<T> implements ClinicSuccess<T> {
  const _$ClinicSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ClinicState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicSuccessImplCopyWith<T, _$ClinicSuccessImpl<T>> get copyWith =>
      __$$ClinicSuccessImplCopyWithImpl<T, _$ClinicSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ClinicLoading<T> value) loading,
    required TResult Function(ClinicSuccess<T> value) success,
    required TResult Function(ClinicError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ClinicLoading<T> value)? loading,
    TResult? Function(ClinicSuccess<T> value)? success,
    TResult? Function(ClinicError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ClinicLoading<T> value)? loading,
    TResult Function(ClinicSuccess<T> value)? success,
    TResult Function(ClinicError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ClinicSuccess<T> implements ClinicState<T> {
  const factory ClinicSuccess(final T data) = _$ClinicSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ClinicSuccessImplCopyWith<T, _$ClinicSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClinicErrorImplCopyWith<T, $Res> {
  factory _$$ClinicErrorImplCopyWith(_$ClinicErrorImpl<T> value,
          $Res Function(_$ClinicErrorImpl<T>) then) =
      __$$ClinicErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ClinicErrorImplCopyWithImpl<T, $Res>
    extends _$ClinicStateCopyWithImpl<T, $Res, _$ClinicErrorImpl<T>>
    implements _$$ClinicErrorImplCopyWith<T, $Res> {
  __$$ClinicErrorImplCopyWithImpl(
      _$ClinicErrorImpl<T> _value, $Res Function(_$ClinicErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ClinicErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClinicErrorImpl<T> implements ClinicError<T> {
  const _$ClinicErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ClinicState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClinicErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClinicErrorImplCopyWith<T, _$ClinicErrorImpl<T>> get copyWith =>
      __$$ClinicErrorImplCopyWithImpl<T, _$ClinicErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ClinicLoading<T> value) loading,
    required TResult Function(ClinicSuccess<T> value) success,
    required TResult Function(ClinicError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ClinicLoading<T> value)? loading,
    TResult? Function(ClinicSuccess<T> value)? success,
    TResult? Function(ClinicError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ClinicLoading<T> value)? loading,
    TResult Function(ClinicSuccess<T> value)? success,
    TResult Function(ClinicError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ClinicError<T> implements ClinicState<T> {
  const factory ClinicError({required final String error}) =
      _$ClinicErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ClinicErrorImplCopyWith<T, _$ClinicErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
