// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  UsernameAlreadyExists<T> usernameAlreadyExists<T>({@required T failedValue}) {
    return UsernameAlreadyExists<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidImageUrl<T> invalidImageUrl<T>({@required T failedValue}) {
    return InvalidImageUrl<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPrice<T> invalidPrice<T>({@required T failedValue}) {
    return InvalidPrice<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  OutOfRange<T> outOfRange<T>({@required T failedValue}) {
    return OutOfRange<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

/// @nodoc
abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

/// @nodoc
class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({@required T failedValue}) =
      _$InvalidPassword<T>;

  @override
  T get failedValue;
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({@required T failedValue}) =
      _$InvalidUsername<T>;

  @override
  T get failedValue;
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith;
}

/// @nodoc
abstract class $UsernameAlreadyExistsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $UsernameAlreadyExistsCopyWith(UsernameAlreadyExists<T> value,
          $Res Function(UsernameAlreadyExists<T>) then) =
      _$UsernameAlreadyExistsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$UsernameAlreadyExistsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $UsernameAlreadyExistsCopyWith<T, $Res> {
  _$UsernameAlreadyExistsCopyWithImpl(UsernameAlreadyExists<T> _value,
      $Res Function(UsernameAlreadyExists<T>) _then)
      : super(_value, (v) => _then(v as UsernameAlreadyExists<T>));

  @override
  UsernameAlreadyExists<T> get _value =>
      super._value as UsernameAlreadyExists<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(UsernameAlreadyExists<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$UsernameAlreadyExists<T> implements UsernameAlreadyExists<T> {
  const _$UsernameAlreadyExists({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.usernameAlreadyExists(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameAlreadyExists<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $UsernameAlreadyExistsCopyWith<T, UsernameAlreadyExists<T>> get copyWith =>
      _$UsernameAlreadyExistsCopyWithImpl<T, UsernameAlreadyExists<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return usernameAlreadyExists(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyExists != null) {
      return usernameAlreadyExists(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return usernameAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyExists != null) {
      return usernameAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyExists<T> implements ValueFailure<T> {
  const factory UsernameAlreadyExists({@required T failedValue}) =
      _$UsernameAlreadyExists<T>;

  @override
  T get failedValue;
  @override
  $UsernameAlreadyExistsCopyWith<T, UsernameAlreadyExists<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidImageUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidImageUrlCopyWith(
          InvalidImageUrl<T> value, $Res Function(InvalidImageUrl<T>) then) =
      _$InvalidImageUrlCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidImageUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidImageUrlCopyWith<T, $Res> {
  _$InvalidImageUrlCopyWithImpl(
      InvalidImageUrl<T> _value, $Res Function(InvalidImageUrl<T>) _then)
      : super(_value, (v) => _then(v as InvalidImageUrl<T>));

  @override
  InvalidImageUrl<T> get _value => super._value as InvalidImageUrl<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidImageUrl<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidImageUrl<T> implements InvalidImageUrl<T> {
  const _$InvalidImageUrl({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidImageUrl(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidImageUrl<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidImageUrlCopyWith<T, InvalidImageUrl<T>> get copyWith =>
      _$InvalidImageUrlCopyWithImpl<T, InvalidImageUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidImageUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageUrl != null) {
      return invalidImageUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidImageUrl(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidImageUrl != null) {
      return invalidImageUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidImageUrl<T> implements ValueFailure<T> {
  const factory InvalidImageUrl({@required T failedValue}) =
      _$InvalidImageUrl<T>;

  @override
  T get failedValue;
  @override
  $InvalidImageUrlCopyWith<T, InvalidImageUrl<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPriceCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPriceCopyWith(
          InvalidPrice<T> value, $Res Function(InvalidPrice<T>) then) =
      _$InvalidPriceCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPriceCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPriceCopyWith<T, $Res> {
  _$InvalidPriceCopyWithImpl(
      InvalidPrice<T> _value, $Res Function(InvalidPrice<T>) _then)
      : super(_value, (v) => _then(v as InvalidPrice<T>));

  @override
  InvalidPrice<T> get _value => super._value as InvalidPrice<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPrice<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$InvalidPrice<T> implements InvalidPrice<T> {
  const _$InvalidPrice({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPrice(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPrice<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPriceCopyWith<T, InvalidPrice<T>> get copyWith =>
      _$InvalidPriceCopyWithImpl<T, InvalidPrice<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidPrice(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPrice != null) {
      return invalidPrice(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return invalidPrice(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPrice != null) {
      return invalidPrice(this);
    }
    return orElse();
  }
}

abstract class InvalidPrice<T> implements ValueFailure<T> {
  const factory InvalidPrice({@required T failedValue}) = _$InvalidPrice<T>;

  @override
  T get failedValue;
  @override
  $InvalidPriceCopyWith<T, InvalidPrice<T>> get copyWith;
}

/// @nodoc
abstract class $OutOfRangeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $OutOfRangeCopyWith(
          OutOfRange<T> value, $Res Function(OutOfRange<T>) then) =
      _$OutOfRangeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$OutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $OutOfRangeCopyWith<T, $Res> {
  _$OutOfRangeCopyWithImpl(
      OutOfRange<T> _value, $Res Function(OutOfRange<T>) _then)
      : super(_value, (v) => _then(v as OutOfRange<T>));

  @override
  OutOfRange<T> get _value => super._value as OutOfRange<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(OutOfRange<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$OutOfRange<T> implements OutOfRange<T> {
  const _$OutOfRange({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.outOfRange(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $OutOfRangeCopyWith<T, OutOfRange<T>> get copyWith =>
      _$OutOfRangeCopyWithImpl<T, OutOfRange<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result invalidPassword(T failedValue),
    @required Result invalidUsername(T failedValue),
    @required Result usernameAlreadyExists(T failedValue),
    @required Result invalidImageUrl(T failedValue),
    @required Result invalidPrice(T failedValue),
    @required Result outOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return outOfRange(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result invalidPassword(T failedValue),
    Result invalidUsername(T failedValue),
    Result usernameAlreadyExists(T failedValue),
    Result invalidImageUrl(T failedValue),
    Result invalidPrice(T failedValue),
    Result outOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outOfRange != null) {
      return outOfRange(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result invalidUsername(InvalidUsername<T> value),
    @required Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    @required Result invalidImageUrl(InvalidImageUrl<T> value),
    @required Result invalidPrice(InvalidPrice<T> value),
    @required Result outOfRange(OutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
    assert(invalidImageUrl != null);
    assert(invalidPrice != null);
    assert(outOfRange != null);
    return outOfRange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result invalidPassword(InvalidPassword<T> value),
    Result invalidUsername(InvalidUsername<T> value),
    Result usernameAlreadyExists(UsernameAlreadyExists<T> value),
    Result invalidImageUrl(InvalidImageUrl<T> value),
    Result invalidPrice(InvalidPrice<T> value),
    Result outOfRange(OutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (outOfRange != null) {
      return outOfRange(this);
    }
    return orElse();
  }
}

abstract class OutOfRange<T> implements ValueFailure<T> {
  const factory OutOfRange({@required T failedValue}) = _$OutOfRange<T>;

  @override
  T get failedValue;
  @override
  $OutOfRangeCopyWith<T, OutOfRange<T>> get copyWith;
}
