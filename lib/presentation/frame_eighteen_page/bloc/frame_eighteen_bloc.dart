import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:rofyt/presentation/frame_eighteen_page/models/frame_eighteen_model.dart';
part 'frame_eighteen_event.dart';
part 'frame_eighteen_state.dart';

/// A bloc that manages the state of a FrameEighteen according to the event that is dispatched to it.
class FrameEighteenBloc extends Bloc<FrameEighteenEvent, FrameEighteenState> {
  FrameEighteenBloc(FrameEighteenState initialState) : super(initialState) {
    on<FrameEighteenInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<FrameEighteenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    FrameEighteenInitialEvent event,
    Emitter<FrameEighteenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
