// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({@required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidUsername<T> invalidUsername<T>({@required T failedValue}) {
    return InvalidUsername<T>(
      failedValue: failedValue,
    );
  }

  UsernameAlreadyExists<T> usernameAlreadyExists<T>({@required T failedValue}) {
    return UsernameAlreadyExists<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

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
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

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

abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $InvalidUsernameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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

abstract class $UsernameAlreadyExistsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $UsernameAlreadyExistsCopyWith(UsernameAlreadyExists<T> value,
          $Res Function(UsernameAlreadyExists<T>) then) =
      _$UsernameAlreadyExistsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(invalidUsername != null);
    assert(usernameAlreadyExists != null);
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
