// ignore_for_file: must_be_immutable

part of 'frame_three_bloc.dart';

/// Represents the state of FrameThree in the application.
class FrameThreeState extends Equatable {
  FrameThreeState({
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.frameThreeModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  FrameThreeModel? frameThreeModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        passwordController,
        confirmpasswordController,
        isShowPassword,
        frameThreeModelObj,
      ];
  FrameThreeState copyWith({
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    FrameThreeModel? frameThreeModelObj,
  }) {
    return FrameThreeState(
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      frameThreeModelObj: frameThreeModelObj ?? this.frameThreeModelObj,
    );
  }
}
