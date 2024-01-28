// ignore_for_file: must_be_immutable

part of 'frame_eighteen_bloc.dart';

/// Represents the state of FrameEighteen in the application.
class FrameEighteenState extends Equatable {
  FrameEighteenState({
    this.phoneNumberController,
    this.selectedCountry,
    this.frameEighteenModelObj,
  });

  TextEditingController? phoneNumberController;

  FrameEighteenModel? frameEighteenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        frameEighteenModelObj,
      ];
  FrameEighteenState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    FrameEighteenModel? frameEighteenModelObj,
  }) {
    return FrameEighteenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      frameEighteenModelObj:
          frameEighteenModelObj ?? this.frameEighteenModelObj,
    );
  }
}
