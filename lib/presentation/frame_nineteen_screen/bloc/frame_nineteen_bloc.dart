import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_nineteen_screen/models/frame_nineteen_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'frame_nineteen_event.dart';
part 'frame_nineteen_state.dart';

/// A bloc that manages the state of a FrameNineteen according to the event that is dispatched to it.
class FrameNineteenBloc extends Bloc<FrameNineteenEvent, FrameNineteenState>
    with CodeAutoFill {
  FrameNineteenBloc(FrameNineteenState initialState) : super(initialState) {
    on<FrameNineteenInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<FrameNineteenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    FrameNineteenInitialEvent event,
    Emitter<FrameNineteenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
