import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'footer_state.freezed.dart';
part 'footer_state.g.dart';

@freezed
abstract class FooterState with _$FooterState {
  factory FooterState({
    @Default(0) int index,
  }) = _FooterState;

  factory FooterState.fromJson(Map<String, dynamic> json) =>
      _$FooterStateFromJson(json);
}
