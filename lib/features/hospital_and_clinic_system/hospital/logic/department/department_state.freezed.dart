// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentState<T> {
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
    required TResult Function(DepartmentStateLoading<T> value) loading,
    required TResult Function(DepartmentStateSuccess<T> value) success,
    required TResult Function(DepartmentStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DepartmentStateLoading<T> value)? loading,
    TResult? Function(DepartmentStateSuccess<T> value)? success,
    TResult? Function(DepartmentStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DepartmentStateLoading<T> value)? loading,
    TResult Function(DepartmentStateSuccess<T> value)? success,
    TResult Function(DepartmentStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<T, $Res> {
  factory $DepartmentStateCopyWith(
          DepartmentState<T> value, $Res Function(DepartmentState<T>) then) =
      _$DepartmentStateCopyWithImpl<T, $Res, DepartmentState<T>>;
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<T, $Res, $Val extends DepartmentState<T>>
    implements $DepartmentStateCopyWith<T, $Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

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
    extends _$DepartmentStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'DepartmentState<$T>.initial()';
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
    required TResult Function(DepartmentStateLoading<T> value) loading,
    required TResult Function(DepartmentStateSuccess<T> value) success,
    required TResult Function(DepartmentStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DepartmentStateLoading<T> value)? loading,
    TResult? Function(DepartmentStateSuccess<T> value)? success,
    TResult? Function(DepartmentStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DepartmentStateLoading<T> value)? loading,
    TResult Function(DepartmentStateSuccess<T> value)? success,
    TResult Function(DepartmentStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements DepartmentState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$DepartmentStateLoadingImplCopyWith<T, $Res> {
  factory _$$DepartmentStateLoadingImplCopyWith(
          _$DepartmentStateLoadingImpl<T> value,
          $Res Function(_$DepartmentStateLoadingImpl<T>) then) =
      __$$DepartmentStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DepartmentStateLoadingImplCopyWithImpl<T, $Res>
    extends _$DepartmentStateCopyWithImpl<T, $Res,
        _$DepartmentStateLoadingImpl<T>>
    implements _$$DepartmentStateLoadingImplCopyWith<T, $Res> {
  __$$DepartmentStateLoadingImplCopyWithImpl(
      _$DepartmentStateLoadingImpl<T> _value,
      $Res Function(_$DepartmentStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DepartmentStateLoadingImpl<T> implements DepartmentStateLoading<T> {
  const _$DepartmentStateLoadingImpl();

  @override
  String toString() {
    return 'DepartmentState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateLoadingImpl<T>);
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
    required TResult Function(DepartmentStateLoading<T> value) loading,
    required TResult Function(DepartmentStateSuccess<T> value) success,
    required TResult Function(DepartmentStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DepartmentStateLoading<T> value)? loading,
    TResult? Function(DepartmentStateSuccess<T> value)? success,
    TResult? Function(DepartmentStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DepartmentStateLoading<T> value)? loading,
    TResult Function(DepartmentStateSuccess<T> value)? success,
    TResult Function(DepartmentStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateLoading<T> implements DepartmentState<T> {
  const factory DepartmentStateLoading() = _$DepartmentStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DepartmentStateSuccessImplCopyWith<T, $Res> {
  factory _$$DepartmentStateSuccessImplCopyWith(
          _$DepartmentStateSuccessImpl<T> value,
          $Res Function(_$DepartmentStateSuccessImpl<T>) then) =
      __$$DepartmentStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DepartmentStateSuccessImplCopyWithImpl<T, $Res>
    extends _$DepartmentStateCopyWithImpl<T, $Res,
        _$DepartmentStateSuccessImpl<T>>
    implements _$$DepartmentStateSuccessImplCopyWith<T, $Res> {
  __$$DepartmentStateSuccessImplCopyWithImpl(
      _$DepartmentStateSuccessImpl<T> _value,
      $Res Function(_$DepartmentStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DepartmentStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DepartmentStateSuccessImpl<T> implements DepartmentStateSuccess<T> {
  const _$DepartmentStateSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DepartmentState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateSuccessImplCopyWith<T, _$DepartmentStateSuccessImpl<T>>
      get copyWith => __$$DepartmentStateSuccessImplCopyWithImpl<T,
          _$DepartmentStateSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(DepartmentStateLoading<T> value) loading,
    required TResult Function(DepartmentStateSuccess<T> value) success,
    required TResult Function(DepartmentStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DepartmentStateLoading<T> value)? loading,
    TResult? Function(DepartmentStateSuccess<T> value)? success,
    TResult? Function(DepartmentStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DepartmentStateLoading<T> value)? loading,
    TResult Function(DepartmentStateSuccess<T> value)? success,
    TResult Function(DepartmentStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateSuccess<T> implements DepartmentState<T> {
  const factory DepartmentStateSuccess(final T data) =
      _$DepartmentStateSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DepartmentStateSuccessImplCopyWith<T, _$DepartmentStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DepartmentStateErrorImplCopyWith<T, $Res> {
  factory _$$DepartmentStateErrorImplCopyWith(
          _$DepartmentStateErrorImpl<T> value,
          $Res Function(_$DepartmentStateErrorImpl<T>) then) =
      __$$DepartmentStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DepartmentStateErrorImplCopyWithImpl<T, $Res>
    extends _$DepartmentStateCopyWithImpl<T, $Res,
        _$DepartmentStateErrorImpl<T>>
    implements _$$DepartmentStateErrorImplCopyWith<T, $Res> {
  __$$DepartmentStateErrorImplCopyWithImpl(_$DepartmentStateErrorImpl<T> _value,
      $Res Function(_$DepartmentStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DepartmentStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DepartmentStateErrorImpl<T> implements DepartmentStateError<T> {
  const _$DepartmentStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'DepartmentState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentStateErrorImplCopyWith<T, _$DepartmentStateErrorImpl<T>>
      get copyWith => __$$DepartmentStateErrorImplCopyWithImpl<T,
          _$DepartmentStateErrorImpl<T>>(this, _$identity);

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
    required TResult Function(DepartmentStateLoading<T> value) loading,
    required TResult Function(DepartmentStateSuccess<T> value) success,
    required TResult Function(DepartmentStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(DepartmentStateLoading<T> value)? loading,
    TResult? Function(DepartmentStateSuccess<T> value)? success,
    TResult? Function(DepartmentStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(DepartmentStateLoading<T> value)? loading,
    TResult Function(DepartmentStateSuccess<T> value)? success,
    TResult Function(DepartmentStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DepartmentStateError<T> implements DepartmentState<T> {
  const factory DepartmentStateError({required final String error}) =
      _$DepartmentStateErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$DepartmentStateErrorImplCopyWith<T, _$DepartmentStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
