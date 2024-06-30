// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PharmacyState<T> {
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
    required TResult Function(PharmacyLoading<T> value) loading,
    required TResult Function(PharmacySuccess<T> value) success,
    required TResult Function(PharmacyError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PharmacyLoading<T> value)? loading,
    TResult? Function(PharmacySuccess<T> value)? success,
    TResult? Function(PharmacyError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PharmacyLoading<T> value)? loading,
    TResult Function(PharmacySuccess<T> value)? success,
    TResult Function(PharmacyError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyStateCopyWith<T, $Res> {
  factory $PharmacyStateCopyWith(
          PharmacyState<T> value, $Res Function(PharmacyState<T>) then) =
      _$PharmacyStateCopyWithImpl<T, $Res, PharmacyState<T>>;
}

/// @nodoc
class _$PharmacyStateCopyWithImpl<T, $Res, $Val extends PharmacyState<T>>
    implements $PharmacyStateCopyWith<T, $Res> {
  _$PharmacyStateCopyWithImpl(this._value, this._then);

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
    extends _$PharmacyStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'PharmacyState<$T>.initial()';
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
    required TResult Function(PharmacyLoading<T> value) loading,
    required TResult Function(PharmacySuccess<T> value) success,
    required TResult Function(PharmacyError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PharmacyLoading<T> value)? loading,
    TResult? Function(PharmacySuccess<T> value)? success,
    TResult? Function(PharmacyError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PharmacyLoading<T> value)? loading,
    TResult Function(PharmacySuccess<T> value)? success,
    TResult Function(PharmacyError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements PharmacyState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$PharmacyLoadingImplCopyWith<T, $Res> {
  factory _$$PharmacyLoadingImplCopyWith(_$PharmacyLoadingImpl<T> value,
          $Res Function(_$PharmacyLoadingImpl<T>) then) =
      __$$PharmacyLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PharmacyLoadingImplCopyWithImpl<T, $Res>
    extends _$PharmacyStateCopyWithImpl<T, $Res, _$PharmacyLoadingImpl<T>>
    implements _$$PharmacyLoadingImplCopyWith<T, $Res> {
  __$$PharmacyLoadingImplCopyWithImpl(_$PharmacyLoadingImpl<T> _value,
      $Res Function(_$PharmacyLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PharmacyLoadingImpl<T> implements PharmacyLoading<T> {
  const _$PharmacyLoadingImpl();

  @override
  String toString() {
    return 'PharmacyState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PharmacyLoadingImpl<T>);
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
    required TResult Function(PharmacyLoading<T> value) loading,
    required TResult Function(PharmacySuccess<T> value) success,
    required TResult Function(PharmacyError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PharmacyLoading<T> value)? loading,
    TResult? Function(PharmacySuccess<T> value)? success,
    TResult? Function(PharmacyError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PharmacyLoading<T> value)? loading,
    TResult Function(PharmacySuccess<T> value)? success,
    TResult Function(PharmacyError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PharmacyLoading<T> implements PharmacyState<T> {
  const factory PharmacyLoading() = _$PharmacyLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PharmacySuccessImplCopyWith<T, $Res> {
  factory _$$PharmacySuccessImplCopyWith(_$PharmacySuccessImpl<T> value,
          $Res Function(_$PharmacySuccessImpl<T>) then) =
      __$$PharmacySuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$PharmacySuccessImplCopyWithImpl<T, $Res>
    extends _$PharmacyStateCopyWithImpl<T, $Res, _$PharmacySuccessImpl<T>>
    implements _$$PharmacySuccessImplCopyWith<T, $Res> {
  __$$PharmacySuccessImplCopyWithImpl(_$PharmacySuccessImpl<T> _value,
      $Res Function(_$PharmacySuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PharmacySuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PharmacySuccessImpl<T> implements PharmacySuccess<T> {
  const _$PharmacySuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'PharmacyState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PharmacySuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PharmacySuccessImplCopyWith<T, _$PharmacySuccessImpl<T>> get copyWith =>
      __$$PharmacySuccessImplCopyWithImpl<T, _$PharmacySuccessImpl<T>>(
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
    required TResult Function(PharmacyLoading<T> value) loading,
    required TResult Function(PharmacySuccess<T> value) success,
    required TResult Function(PharmacyError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PharmacyLoading<T> value)? loading,
    TResult? Function(PharmacySuccess<T> value)? success,
    TResult? Function(PharmacyError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PharmacyLoading<T> value)? loading,
    TResult Function(PharmacySuccess<T> value)? success,
    TResult Function(PharmacyError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PharmacySuccess<T> implements PharmacyState<T> {
  const factory PharmacySuccess(final T data) = _$PharmacySuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$PharmacySuccessImplCopyWith<T, _$PharmacySuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PharmacyErrorImplCopyWith<T, $Res> {
  factory _$$PharmacyErrorImplCopyWith(_$PharmacyErrorImpl<T> value,
          $Res Function(_$PharmacyErrorImpl<T>) then) =
      __$$PharmacyErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PharmacyErrorImplCopyWithImpl<T, $Res>
    extends _$PharmacyStateCopyWithImpl<T, $Res, _$PharmacyErrorImpl<T>>
    implements _$$PharmacyErrorImplCopyWith<T, $Res> {
  __$$PharmacyErrorImplCopyWithImpl(_$PharmacyErrorImpl<T> _value,
      $Res Function(_$PharmacyErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PharmacyErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PharmacyErrorImpl<T> implements PharmacyError<T> {
  const _$PharmacyErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PharmacyState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PharmacyErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PharmacyErrorImplCopyWith<T, _$PharmacyErrorImpl<T>> get copyWith =>
      __$$PharmacyErrorImplCopyWithImpl<T, _$PharmacyErrorImpl<T>>(
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
    required TResult Function(PharmacyLoading<T> value) loading,
    required TResult Function(PharmacySuccess<T> value) success,
    required TResult Function(PharmacyError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(PharmacyLoading<T> value)? loading,
    TResult? Function(PharmacySuccess<T> value)? success,
    TResult? Function(PharmacyError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(PharmacyLoading<T> value)? loading,
    TResult Function(PharmacySuccess<T> value)? success,
    TResult Function(PharmacyError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PharmacyError<T> implements PharmacyState<T> {
  const factory PharmacyError({required final String error}) =
      _$PharmacyErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$PharmacyErrorImplCopyWith<T, _$PharmacyErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
