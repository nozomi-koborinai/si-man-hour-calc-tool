// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get manager => throw _privateConstructorUsedError;
  double get time => throw _privateConstructorUsedError;
  int get peopleCount => throw _privateConstructorUsedError;
  double get manHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call({String manager, double time, int peopleCount, double manHour});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? manager = freezed,
    Object? time = freezed,
    Object? peopleCount = freezed,
    Object? manHour = freezed,
  }) {
    return _then(_value.copyWith(
      manager: manager == freezed
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      peopleCount: peopleCount == freezed
          ? _value.peopleCount
          : peopleCount // ignore: cast_nullable_to_non_nullable
              as int,
      manHour: manHour == freezed
          ? _value.manHour
          : manHour // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call({String manager, double time, int peopleCount, double manHour});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? manager = freezed,
    Object? time = freezed,
    Object? peopleCount = freezed,
    Object? manHour = freezed,
  }) {
    return _then(_$_Result(
      manager: manager == freezed
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double,
      peopleCount: peopleCount == freezed
          ? _value.peopleCount
          : peopleCount // ignore: cast_nullable_to_non_nullable
              as int,
      manHour: manHour == freezed
          ? _value.manHour
          : manHour // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result with DiagnosticableTreeMixin implements _Result {
  const _$_Result(
      {required this.manager,
      required this.time,
      required this.peopleCount,
      required this.manHour});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String manager;
  @override
  final double time;
  @override
  final int peopleCount;
  @override
  final double manHour;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Result(manager: $manager, time: $time, peopleCount: $peopleCount, manHour: $manHour)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Result'))
      ..add(DiagnosticsProperty('manager', manager))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('peopleCount', peopleCount))
      ..add(DiagnosticsProperty('manHour', manHour));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.manager, manager) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.peopleCount, peopleCount) &&
            const DeepCollectionEquality().equals(other.manHour, manHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(manager),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(peopleCount),
      const DeepCollectionEquality().hash(manHour));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }

  @override
  String createManHourText() {
    throw UnimplementedError();
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String manager,
      required final double time,
      required final int peopleCount,
      required final double manHour}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String get manager => throw _privateConstructorUsedError;
  @override
  double get time => throw _privateConstructorUsedError;
  @override
  int get peopleCount => throw _privateConstructorUsedError;
  @override
  double get manHour => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
