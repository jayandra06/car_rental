// ignore_for_file: must_be_immutable

part of 'frame_ten_bloc.dart';

/// Represents the state of FrameTen in the application.
class FrameTenState extends Equatable {
  FrameTenState({
    this.phoneNumberController,
    this.selectedCountry,
    this.frameTenModelObj,
  });

  TextEditingController? phoneNumberController;

  FrameTenModel? frameTenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        frameTenModelObj,
      ];
  FrameTenState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    FrameTenModel? frameTenModelObj,
  }) {
    return FrameTenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      frameTenModelObj: frameTenModelObj ?? this.frameTenModelObj,
    );
  }
}
