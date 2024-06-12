// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hospital_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HospitalState<T> {
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
    required TResult Function(HospitalLoading<T> value) loading,
    required TResult Function(HospitalSuccess<T> value) success,
    required TResult Function(HospitalError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HospitalLoading<T> value)? loading,
    TResult? Function(HospitalSuccess<T> value)? success,
    TResult? Function(HospitalError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HospitalLoading<T> value)? loading,
    TResult Function(HospitalSuccess<T> value)? success,
    TResult Function(HospitalError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HospitalStateCopyWith<T, $Res> {
  factory $HospitalStateCopyWith(
          HospitalState<T> value, $Res Function(HospitalState<T>) then) =
      _$HospitalStateCopyWithImpl<T, $Res, HospitalState<T>>;
}

/// @nodoc
class _$HospitalStateCopyWithImpl<T, $Res, $Val extends HospitalState<T>>
    implements $HospitalStateCopyWith<T, $Res> {
  _$HospitalStateCopyWithImpl(this._value, this._then);

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
    extends _$HospitalStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'HospitalState<$T>.initial()';
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
    required TResult Function(HospitalLoading<T> value) loading,
    required TResult Function(HospitalSuccess<T> value) success,
    required TResult Function(HospitalError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HospitalLoading<T> value)? loading,
    TResult? Function(HospitalSuccess<T> value)? success,
    TResult? Function(HospitalError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HospitalLoading<T> value)? loading,
    TResult Function(HospitalSuccess<T> value)? success,
    TResult Function(HospitalError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HospitalState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$HospitalLoadingImplCopyWith<T, $Res> {
  factory _$$HospitalLoadingImplCopyWith(_$HospitalLoadingImpl<T> value,
          $Res Function(_$HospitalLoadingImpl<T>) then) =
      __$$HospitalLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$HospitalLoadingImplCopyWithImpl<T, $Res>
    extends _$HospitalStateCopyWithImpl<T, $Res, _$HospitalLoadingImpl<T>>
    implements _$$HospitalLoadingImplCopyWith<T, $Res> {
  __$$HospitalLoadingImplCopyWithImpl(_$HospitalLoadingImpl<T> _value,
      $Res Function(_$HospitalLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HospitalLoadingImpl<T> implements HospitalLoading<T> {
  const _$HospitalLoadingImpl();

  @override
  String toString() {
    return 'HospitalState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HospitalLoadingImpl<T>);
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
    required TResult Function(HospitalLoading<T> value) loading,
    required TResult Function(HospitalSuccess<T> value) success,
    required TResult Function(HospitalError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HospitalLoading<T> value)? loading,
    TResult? Function(HospitalSuccess<T> value)? success,
    TResult? Function(HospitalError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HospitalLoading<T> value)? loading,
    TResult Function(HospitalSuccess<T> value)? success,
    TResult Function(HospitalError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HospitalLoading<T> implements HospitalState<T> {
  const factory HospitalLoading() = _$HospitalLoadingImpl<T>;
}

/// @nodoc
abstract class _$$HospitalSuccessImplCopyWith<T, $Res> {
  factory _$$HospitalSuccessImplCopyWith(_$HospitalSuccessImpl<T> value,
          $Res Function(_$HospitalSuccessImpl<T>) then) =
      __$$HospitalSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$HospitalSuccessImplCopyWithImpl<T, $Res>
    extends _$HospitalStateCopyWithImpl<T, $Res, _$HospitalSuccessImpl<T>>
    implements _$$HospitalSuccessImplCopyWith<T, $Res> {
  __$$HospitalSuccessImplCopyWithImpl(_$HospitalSuccessImpl<T> _value,
      $Res Function(_$HospitalSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HospitalSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$HospitalSuccessImpl<T> implements HospitalSuccess<T> {
  const _$HospitalSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'HospitalState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalSuccessImplCopyWith<T, _$HospitalSuccessImpl<T>> get copyWith =>
      __$$HospitalSuccessImplCopyWithImpl<T, _$HospitalSuccessImpl<T>>(
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
    required TResult Function(HospitalLoading<T> value) loading,
    required TResult Function(HospitalSuccess<T> value) success,
    required TResult Function(HospitalError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HospitalLoading<T> value)? loading,
    TResult? Function(HospitalSuccess<T> value)? success,
    TResult? Function(HospitalError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HospitalLoading<T> value)? loading,
    TResult Function(HospitalSuccess<T> value)? success,
    TResult Function(HospitalError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HospitalSuccess<T> implements HospitalState<T> {
  const factory HospitalSuccess(final T data) = _$HospitalSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$HospitalSuccessImplCopyWith<T, _$HospitalSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HospitalErrorImplCopyWith<T, $Res> {
  factory _$$HospitalErrorImplCopyWith(_$HospitalErrorImpl<T> value,
          $Res Function(_$HospitalErrorImpl<T>) then) =
      __$$HospitalErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$HospitalErrorImplCopyWithImpl<T, $Res>
    extends _$HospitalStateCopyWithImpl<T, $Res, _$HospitalErrorImpl<T>>
    implements _$$HospitalErrorImplCopyWith<T, $Res> {
  __$$HospitalErrorImplCopyWithImpl(_$HospitalErrorImpl<T> _value,
      $Res Function(_$HospitalErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HospitalErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HospitalErrorImpl<T> implements HospitalError<T> {
  const _$HospitalErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HospitalState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HospitalErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HospitalErrorImplCopyWith<T, _$HospitalErrorImpl<T>> get copyWith =>
      __$$HospitalErrorImplCopyWithImpl<T, _$HospitalErrorImpl<T>>(
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
    required TResult Function(HospitalLoading<T> value) loading,
    required TResult Function(HospitalSuccess<T> value) success,
    required TResult Function(HospitalError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(HospitalLoading<T> value)? loading,
    TResult? Function(HospitalSuccess<T> value)? success,
    TResult? Function(HospitalError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(HospitalLoading<T> value)? loading,
    TResult Function(HospitalSuccess<T> value)? success,
    TResult Function(HospitalError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HospitalError<T> implements HospitalState<T> {
  const factory HospitalError({required final String error}) =
      _$HospitalErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$HospitalErrorImplCopyWith<T, _$HospitalErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
