import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_thirteen_screen/models/frame_thirteen_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'frame_thirteen_event.dart';
part 'frame_thirteen_state.dart';

/// A bloc that manages the state of a FrameThirteen according to the event that is dispatched to it.
class FrameThirteenBloc extends Bloc<FrameThirteenEvent, FrameThirteenState>
    with CodeAutoFill {
  FrameThirteenBloc(FrameThirteenState initialState) : super(initialState) {
    on<FrameThirteenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeOTPEvent>(_changeOTP);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FrameThirteenState> emit,
  ) {
    emit(state.copyWith(
      verifyYourNumber: event.value,
    ));
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<FrameThirteenState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<FrameThirteenState> emit,
  ) {
    emit(state.copyWith(
      aadharUploadFront: event.value,
    ));
  }

  _onInitialize(
    FrameThirteenInitialEvent event,
    Emitter<FrameThirteenState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
      verifyYourNumber: false,
      aadharUploadFront: false,
    ));
    listenForCode();
  }
}
