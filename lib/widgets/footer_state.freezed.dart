// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'footer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FooterState _$FooterStateFromJson(Map<String, dynamic> json) {
  return _FooterState.fromJson(json);
}

class _$FooterStateTearOff {
  const _$FooterStateTearOff();

// ignore: unused_element
  _FooterState call({int index = 0}) {
    return _FooterState(
      index: index,
    );
  }
}

// ignore: unused_element
const $FooterState = _$FooterStateTearOff();

mixin _$FooterState {
  int get index;

  Map<String, dynamic> toJson();
  $FooterStateCopyWith<FooterState> get copyWith;
}

abstract class $FooterStateCopyWith<$Res> {
  factory $FooterStateCopyWith(
          FooterState value, $Res Function(FooterState) then) =
      _$FooterStateCopyWithImpl<$Res>;
  $Res call({int index});
}

class _$FooterStateCopyWithImpl<$Res> implements $FooterStateCopyWith<$Res> {
  _$FooterStateCopyWithImpl(this._value, this._then);

  final FooterState _value;
  // ignore: unused_field
  final $Res Function(FooterState) _then;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

abstract class _$FooterStateCopyWith<$Res>
    implements $FooterStateCopyWith<$Res> {
  factory _$FooterStateCopyWith(
          _FooterState value, $Res Function(_FooterState) then) =
      __$FooterStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

class __$FooterStateCopyWithImpl<$Res> extends _$FooterStateCopyWithImpl<$Res>
    implements _$FooterStateCopyWith<$Res> {
  __$FooterStateCopyWithImpl(
      _FooterState _value, $Res Function(_FooterState) _then)
      : super(_value, (v) => _then(v as _FooterState));

  @override
  _FooterState get _value => super._value as _FooterState;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_FooterState(
      index: index == freezed ? _value.index : index as int,
    ));
  }
}

@JsonSerializable()
class _$_FooterState with DiagnosticableTreeMixin implements _FooterState {
  _$_FooterState({this.index = 0}) : assert(index != null);

  factory _$_FooterState.fromJson(Map<String, dynamic> json) =>
      _$_$_FooterStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FooterState(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FooterState'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FooterState &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$FooterStateCopyWith<_FooterState> get copyWith =>
      __$FooterStateCopyWithImpl<_FooterState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FooterStateToJson(this);
  }
}

abstract class _FooterState implements FooterState {
  factory _FooterState({int index}) = _$_FooterState;

  factory _FooterState.fromJson(Map<String, dynamic> json) =
      _$_FooterState.fromJson;

  @override
  int get index;
  @override
  _$FooterStateCopyWith<_FooterState> get copyWith;
}
