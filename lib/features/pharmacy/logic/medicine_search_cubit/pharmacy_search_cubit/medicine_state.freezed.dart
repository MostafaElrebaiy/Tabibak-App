// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MedicineState<T> {
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
    required TResult Function(MedicineLoading<T> value) loading,
    required TResult Function(MedicineSuccess<T> value) success,
    required TResult Function(MedicineError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MedicineLoading<T> value)? loading,
    TResult? Function(MedicineSuccess<T> value)? success,
    TResult? Function(MedicineError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MedicineLoading<T> value)? loading,
    TResult Function(MedicineSuccess<T> value)? success,
    TResult Function(MedicineError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineStateCopyWith<T, $Res> {
  factory $MedicineStateCopyWith(
          MedicineState<T> value, $Res Function(MedicineState<T>) then) =
      _$MedicineStateCopyWithImpl<T, $Res, MedicineState<T>>;
}

/// @nodoc
class _$MedicineStateCopyWithImpl<T, $Res, $Val extends MedicineState<T>>
    implements $MedicineStateCopyWith<T, $Res> {
  _$MedicineStateCopyWithImpl(this._value, this._then);

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
    extends _$MedicineStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'MedicineState<$T>.initial()';
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
    required TResult Function(MedicineLoading<T> value) loading,
    required TResult Function(MedicineSuccess<T> value) success,
    required TResult Function(MedicineError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MedicineLoading<T> value)? loading,
    TResult? Function(MedicineSuccess<T> value)? success,
    TResult? Function(MedicineError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MedicineLoading<T> value)? loading,
    TResult Function(MedicineSuccess<T> value)? success,
    TResult Function(MedicineError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements MedicineState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$MedicineLoadingImplCopyWith<T, $Res> {
  factory _$$MedicineLoadingImplCopyWith(_$MedicineLoadingImpl<T> value,
          $Res Function(_$MedicineLoadingImpl<T>) then) =
      __$$MedicineLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MedicineLoadingImplCopyWithImpl<T, $Res>
    extends _$MedicineStateCopyWithImpl<T, $Res, _$MedicineLoadingImpl<T>>
    implements _$$MedicineLoadingImplCopyWith<T, $Res> {
  __$$MedicineLoadingImplCopyWithImpl(_$MedicineLoadingImpl<T> _value,
      $Res Function(_$MedicineLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MedicineLoadingImpl<T> implements MedicineLoading<T> {
  const _$MedicineLoadingImpl();

  @override
  String toString() {
    return 'MedicineState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MedicineLoadingImpl<T>);
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
    required TResult Function(MedicineLoading<T> value) loading,
    required TResult Function(MedicineSuccess<T> value) success,
    required TResult Function(MedicineError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MedicineLoading<T> value)? loading,
    TResult? Function(MedicineSuccess<T> value)? success,
    TResult? Function(MedicineError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MedicineLoading<T> value)? loading,
    TResult Function(MedicineSuccess<T> value)? success,
    TResult Function(MedicineError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MedicineLoading<T> implements MedicineState<T> {
  const factory MedicineLoading() = _$MedicineLoadingImpl<T>;
}

/// @nodoc
abstract class _$$MedicineSuccessImplCopyWith<T, $Res> {
  factory _$$MedicineSuccessImplCopyWith(_$MedicineSuccessImpl<T> value,
          $Res Function(_$MedicineSuccessImpl<T>) then) =
      __$$MedicineSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$MedicineSuccessImplCopyWithImpl<T, $Res>
    extends _$MedicineStateCopyWithImpl<T, $Res, _$MedicineSuccessImpl<T>>
    implements _$$MedicineSuccessImplCopyWith<T, $Res> {
  __$$MedicineSuccessImplCopyWithImpl(_$MedicineSuccessImpl<T> _value,
      $Res Function(_$MedicineSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$MedicineSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MedicineSuccessImpl<T> implements MedicineSuccess<T> {
  const _$MedicineSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'MedicineState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineSuccessImplCopyWith<T, _$MedicineSuccessImpl<T>> get copyWith =>
      __$$MedicineSuccessImplCopyWithImpl<T, _$MedicineSuccessImpl<T>>(
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
    required TResult Function(MedicineLoading<T> value) loading,
    required TResult Function(MedicineSuccess<T> value) success,
    required TResult Function(MedicineError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MedicineLoading<T> value)? loading,
    TResult? Function(MedicineSuccess<T> value)? success,
    TResult? Function(MedicineError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MedicineLoading<T> value)? loading,
    TResult Function(MedicineSuccess<T> value)? success,
    TResult Function(MedicineError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MedicineSuccess<T> implements MedicineState<T> {
  const factory MedicineSuccess(final T data) = _$MedicineSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$MedicineSuccessImplCopyWith<T, _$MedicineSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MedicineErrorImplCopyWith<T, $Res> {
  factory _$$MedicineErrorImplCopyWith(_$MedicineErrorImpl<T> value,
          $Res Function(_$MedicineErrorImpl<T>) then) =
      __$$MedicineErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MedicineErrorImplCopyWithImpl<T, $Res>
    extends _$MedicineStateCopyWithImpl<T, $Res, _$MedicineErrorImpl<T>>
    implements _$$MedicineErrorImplCopyWith<T, $Res> {
  __$$MedicineErrorImplCopyWithImpl(_$MedicineErrorImpl<T> _value,
      $Res Function(_$MedicineErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MedicineErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MedicineErrorImpl<T> implements MedicineError<T> {
  const _$MedicineErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MedicineState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicineErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicineErrorImplCopyWith<T, _$MedicineErrorImpl<T>> get copyWith =>
      __$$MedicineErrorImplCopyWithImpl<T, _$MedicineErrorImpl<T>>(
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
    required TResult Function(MedicineLoading<T> value) loading,
    required TResult Function(MedicineSuccess<T> value) success,
    required TResult Function(MedicineError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MedicineLoading<T> value)? loading,
    TResult? Function(MedicineSuccess<T> value)? success,
    TResult? Function(MedicineError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MedicineLoading<T> value)? loading,
    TResult Function(MedicineSuccess<T> value)? success,
    TResult Function(MedicineError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MedicineError<T> implements MedicineState<T> {
  const factory MedicineError({required final String error}) =
      _$MedicineErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$MedicineErrorImplCopyWith<T, _$MedicineErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
