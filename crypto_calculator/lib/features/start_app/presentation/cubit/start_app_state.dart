import 'package:crypto_calculator/mobile_app_core/utils/enums/status.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_app_state.freezed.dart';

@freezed
class StartAppState with _$StartAppState {
  const factory StartAppState({
    @Default(Status.initial) Status status,
    Locale? locale,
    @Default(true) bool isFirstInit,
    @Default(false) bool userIsLogged,
    @Default(false) bool alreadyLogged,
    @Default(false) bool isEmailVerificated,
  }) = _StartAppState;
}
