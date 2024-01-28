import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:rofyt/presentation/frame_ten_screen/models/frame_ten_model.dart';
part 'frame_ten_event.dart';
part 'frame_ten_state.dart';

/// A bloc that manages the state of a FrameTen according to the event that is dispatched to it.
class FrameTenBloc extends Bloc<FrameTenEvent, FrameTenState> {
  FrameTenBloc(FrameTenState initialState) : super(initialState) {
    on<FrameTenInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<FrameTenState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _onInitialize(
    FrameTenInitialEvent event,
    Emitter<FrameTenState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
