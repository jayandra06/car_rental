import 'bloc/frame_nine_bloc.dart';
import 'models/frame_nine_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_radio_button.dart';

class FrameNineBottomsheet extends StatelessWidget {
  const FrameNineBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineBloc>(
        create: (context) =>
            FrameNineBloc(FrameNineState(frameNineModelObj: FrameNineModel()))
              ..add(FrameNineInitialEvent()),
        child: FrameNineBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 14.v),
          _buildVehicleModelRow(context),
          SizedBox(height: 25.v),
          _buildVehicleModelRadioGroup(context)
        ]));
  }

  /// Section Widget
  Widget _buildVehicleModelRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_vehicle_model2".tr, style: theme.textTheme.headlineSmall),
          CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray90001,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(left: 183.h),
              onTap: () {
                onTapImgClose(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildVehicleModelRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocBuilder<FrameNineBloc, FrameNineState>(
            builder: (context, state) {
          return state.frameNineModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_indica".tr,
                      value: state.frameNineModelObj?.radioList[0] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      decoration: RadioStyleHelper.outlineGray,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_tiago".tr,
                      value: state.frameNineModelObj?.radioList[1] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 20.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_nexon".tr,
                      value: state.frameNineModelObj?.radioList[2] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_punch".tr,
                      value: state.frameNineModelObj?.radioList[3] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_hexa".tr,
                      value: state.frameNineModelObj?.radioList[4] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_safari".tr,
                      value: state.frameNineModelObj?.radioList[5] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_harrier".tr,
                      value: state.frameNineModelObj?.radioList[6] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_altroz".tr,
                      value: state.frameNineModelObj?.radioList[7] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_maruti".tr,
                      value: state.frameNineModelObj?.radioList[8] ?? "",
                      groupValue: state.vehicleModelRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameNineBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      })
                ])
              : Container();
        }));
  }

  /// Navigates to the previous screen.
  onTapImgClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
