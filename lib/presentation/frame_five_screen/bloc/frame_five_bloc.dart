import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rofyt/presentation/frame_five_screen/models/frame_five_model.dart';
part 'frame_five_event.dart';
part 'frame_five_state.dart';

/// A bloc that manages the state of a FrameFive according to the event that is dispatched to it.
class FrameFiveBloc extends Bloc<FrameFiveEvent, FrameFiveState> {
  FrameFiveBloc(FrameFiveState initialState) : super(initialState) {
    on<FrameFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameFiveInitialEvent event,
    Emitter<FrameFiveState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
