// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'note_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteFailureTearOff {
  const _$NoteFailureTearOff();

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _InsufficientPermissions insufficientPermissions() {
    return const _InsufficientPermissions();
  }
}

// ignore: unused_element
const $NoteFailure = _$NoteFailureTearOff();

mixin _$NoteFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  });
}

abstract class $NoteFailureCopyWith<$Res> {
  factory $NoteFailureCopyWith(
          NoteFailure value, $Res Function(NoteFailure) then) =
      _$NoteFailureCopyWithImpl<$Res>;
}

class _$NoteFailureCopyWithImpl<$Res> implements $NoteFailureCopyWith<$Res> {
  _$NoteFailureCopyWithImpl(this._value, this._then);

  final NoteFailure _value;
  // ignore: unused_field
  final $Res Function(NoteFailure) _then;
}

abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

class __$UnexpectedCopyWithImpl<$Res> extends _$NoteFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'NoteFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements NoteFailure {
  const factory _Unexpected() = _$_Unexpected;
}

abstract class _$InsufficientPermissionsCopyWith<$Res> {
  factory _$InsufficientPermissionsCopyWith(_InsufficientPermissions value,
          $Res Function(_InsufficientPermissions) then) =
      __$InsufficientPermissionsCopyWithImpl<$Res>;
}

class __$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$NoteFailureCopyWithImpl<$Res>
    implements _$InsufficientPermissionsCopyWith<$Res> {
  __$InsufficientPermissionsCopyWithImpl(_InsufficientPermissions _value,
      $Res Function(_InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as _InsufficientPermissions));

  @override
  _InsufficientPermissions get _value =>
      super._value as _InsufficientPermissions;
}

class _$_InsufficientPermissions implements _InsufficientPermissions {
  const _$_InsufficientPermissions();

  @override
  String toString() {
    return 'NoteFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result insufficientPermissions(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result insufficientPermissions(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result insufficientPermissions(_InsufficientPermissions value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result insufficientPermissions(_InsufficientPermissions value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class _InsufficientPermissions implements NoteFailure {
  const factory _InsufficientPermissions() = _$_InsufficientPermissions;
}
