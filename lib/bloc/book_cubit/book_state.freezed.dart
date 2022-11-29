// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookModel bookModel) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookModel bookModel)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookModel bookModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookDataStateInitial value) initial,
    required TResult Function(BookDataStateLoading value) loading,
    required TResult Function(BookStateSuccess value) success,
    required TResult Function(BookDataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookDataStateInitial value)? initial,
    TResult? Function(BookDataStateLoading value)? loading,
    TResult? Function(BookStateSuccess value)? success,
    TResult? Function(BookDataStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookDataStateInitial value)? initial,
    TResult Function(BookDataStateLoading value)? loading,
    TResult Function(BookStateSuccess value)? success,
    TResult Function(BookDataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDataStateCopyWith<$Res> {
  factory $BookDataStateCopyWith(
          BookDataState value, $Res Function(BookDataState) then) =
      _$BookDataStateCopyWithImpl<$Res, BookDataState>;
}

/// @nodoc
class _$BookDataStateCopyWithImpl<$Res, $Val extends BookDataState>
    implements $BookDataStateCopyWith<$Res> {
  _$BookDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookDataStateInitialCopyWith<$Res> {
  factory _$$BookDataStateInitialCopyWith(_$BookDataStateInitial value,
          $Res Function(_$BookDataStateInitial) then) =
      __$$BookDataStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookDataStateInitialCopyWithImpl<$Res>
    extends _$BookDataStateCopyWithImpl<$Res, _$BookDataStateInitial>
    implements _$$BookDataStateInitialCopyWith<$Res> {
  __$$BookDataStateInitialCopyWithImpl(_$BookDataStateInitial _value,
      $Res Function(_$BookDataStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookDataStateInitial implements BookDataStateInitial {
  const _$BookDataStateInitial();

  @override
  String toString() {
    return 'BookDataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookDataStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookModel bookModel) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookModel bookModel)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookModel bookModel)? success,
    TResult Function(String message)? error,
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
    required TResult Function(BookDataStateInitial value) initial,
    required TResult Function(BookDataStateLoading value) loading,
    required TResult Function(BookStateSuccess value) success,
    required TResult Function(BookDataStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookDataStateInitial value)? initial,
    TResult? Function(BookDataStateLoading value)? loading,
    TResult? Function(BookStateSuccess value)? success,
    TResult? Function(BookDataStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookDataStateInitial value)? initial,
    TResult Function(BookDataStateLoading value)? loading,
    TResult Function(BookStateSuccess value)? success,
    TResult Function(BookDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BookDataStateInitial implements BookDataState {
  const factory BookDataStateInitial() = _$BookDataStateInitial;
}

/// @nodoc
abstract class _$$BookDataStateLoadingCopyWith<$Res> {
  factory _$$BookDataStateLoadingCopyWith(_$BookDataStateLoading value,
          $Res Function(_$BookDataStateLoading) then) =
      __$$BookDataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookDataStateLoadingCopyWithImpl<$Res>
    extends _$BookDataStateCopyWithImpl<$Res, _$BookDataStateLoading>
    implements _$$BookDataStateLoadingCopyWith<$Res> {
  __$$BookDataStateLoadingCopyWithImpl(_$BookDataStateLoading _value,
      $Res Function(_$BookDataStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookDataStateLoading implements BookDataStateLoading {
  const _$BookDataStateLoading();

  @override
  String toString() {
    return 'BookDataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BookDataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookModel bookModel) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookModel bookModel)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookModel bookModel)? success,
    TResult Function(String message)? error,
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
    required TResult Function(BookDataStateInitial value) initial,
    required TResult Function(BookDataStateLoading value) loading,
    required TResult Function(BookStateSuccess value) success,
    required TResult Function(BookDataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookDataStateInitial value)? initial,
    TResult? Function(BookDataStateLoading value)? loading,
    TResult? Function(BookStateSuccess value)? success,
    TResult? Function(BookDataStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookDataStateInitial value)? initial,
    TResult Function(BookDataStateLoading value)? loading,
    TResult Function(BookStateSuccess value)? success,
    TResult Function(BookDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookDataStateLoading implements BookDataState {
  const factory BookDataStateLoading() = _$BookDataStateLoading;
}

/// @nodoc
abstract class _$$BookStateSuccessCopyWith<$Res> {
  factory _$$BookStateSuccessCopyWith(
          _$BookStateSuccess value, $Res Function(_$BookStateSuccess) then) =
      __$$BookStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BookModel bookModel});
}

/// @nodoc
class __$$BookStateSuccessCopyWithImpl<$Res>
    extends _$BookDataStateCopyWithImpl<$Res, _$BookStateSuccess>
    implements _$$BookStateSuccessCopyWith<$Res> {
  __$$BookStateSuccessCopyWithImpl(
      _$BookStateSuccess _value, $Res Function(_$BookStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookModel = null,
  }) {
    return _then(_$BookStateSuccess(
      null == bookModel
          ? _value.bookModel
          : bookModel // ignore: cast_nullable_to_non_nullable
              as BookModel,
    ));
  }
}

/// @nodoc

class _$BookStateSuccess implements BookStateSuccess {
  const _$BookStateSuccess(this.bookModel);

  @override
  final BookModel bookModel;

  @override
  String toString() {
    return 'BookDataState.success(bookModel: $bookModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookStateSuccess &&
            (identical(other.bookModel, bookModel) ||
                other.bookModel == bookModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookStateSuccessCopyWith<_$BookStateSuccess> get copyWith =>
      __$$BookStateSuccessCopyWithImpl<_$BookStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookModel bookModel) success,
    required TResult Function(String message) error,
  }) {
    return success(bookModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookModel bookModel)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(bookModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookModel bookModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bookModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookDataStateInitial value) initial,
    required TResult Function(BookDataStateLoading value) loading,
    required TResult Function(BookStateSuccess value) success,
    required TResult Function(BookDataStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookDataStateInitial value)? initial,
    TResult? Function(BookDataStateLoading value)? loading,
    TResult? Function(BookStateSuccess value)? success,
    TResult? Function(BookDataStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookDataStateInitial value)? initial,
    TResult Function(BookDataStateLoading value)? loading,
    TResult Function(BookStateSuccess value)? success,
    TResult Function(BookDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BookStateSuccess implements BookDataState {
  const factory BookStateSuccess(final BookModel bookModel) =
      _$BookStateSuccess;

  BookModel get bookModel;
  @JsonKey(ignore: true)
  _$$BookStateSuccessCopyWith<_$BookStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookDataStateErrorCopyWith<$Res> {
  factory _$$BookDataStateErrorCopyWith(_$BookDataStateError value,
          $Res Function(_$BookDataStateError) then) =
      __$$BookDataStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BookDataStateErrorCopyWithImpl<$Res>
    extends _$BookDataStateCopyWithImpl<$Res, _$BookDataStateError>
    implements _$$BookDataStateErrorCopyWith<$Res> {
  __$$BookDataStateErrorCopyWithImpl(
      _$BookDataStateError _value, $Res Function(_$BookDataStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BookDataStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookDataStateError implements BookDataStateError {
  const _$BookDataStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookDataState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDataStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDataStateErrorCopyWith<_$BookDataStateError> get copyWith =>
      __$$BookDataStateErrorCopyWithImpl<_$BookDataStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookModel bookModel) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookModel bookModel)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookModel bookModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookDataStateInitial value) initial,
    required TResult Function(BookDataStateLoading value) loading,
    required TResult Function(BookStateSuccess value) success,
    required TResult Function(BookDataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookDataStateInitial value)? initial,
    TResult? Function(BookDataStateLoading value)? loading,
    TResult? Function(BookStateSuccess value)? success,
    TResult? Function(BookDataStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookDataStateInitial value)? initial,
    TResult Function(BookDataStateLoading value)? loading,
    TResult Function(BookStateSuccess value)? success,
    TResult Function(BookDataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookDataStateError implements BookDataState {
  const factory BookDataStateError(final String message) = _$BookDataStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$BookDataStateErrorCopyWith<_$BookDataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
