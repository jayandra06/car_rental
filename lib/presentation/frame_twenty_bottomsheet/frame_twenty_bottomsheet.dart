import 'bloc/frame_twenty_bloc.dart';
import 'models/frame_twenty_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_radio_button.dart';

class FrameTwentyBottomsheet extends StatelessWidget {
  const FrameTwentyBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwentyBloc>(
        create: (context) => FrameTwentyBloc(
            FrameTwentyState(frameTwentyModelObj: FrameTwentyModel()))
          ..add(FrameTwentyInitialEvent()),
        child: FrameTwentyBottomsheet());
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
          _buildVehicleMakeRow(context),
          SizedBox(height: 25.v),
          _buildVehicleMakeRadioGroup(context)
        ]));
  }

  /// Section Widget
  Widget _buildVehicleMakeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_vehicle_make2".tr, style: theme.textTheme.headlineSmall),
          CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray90001,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(left: 188.h),
              onTap: () {
                onTapImgClose(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildVehicleMakeRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocBuilder<FrameTwentyBloc, FrameTwentyState>(
            builder: (context, state) {
          return state.frameTwentyModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_tata".tr,
                      value: state.frameTwentyModelObj?.radioList[0] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      decoration: RadioStyleHelper.outlineGray,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_renault".tr,
                      value: state.frameTwentyModelObj?.radioList[1] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_kia".tr,
                      value: state.frameTwentyModelObj?.radioList[2] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_force".tr,
                      value: state.frameTwentyModelObj?.radioList[3] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_scoda".tr,
                      value: state.frameTwentyModelObj?.radioList[4] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_mahindra".tr,
                      value: state.frameTwentyModelObj?.radioList[5] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_hyundai".tr,
                      value: state.frameTwentyModelObj?.radioList[6] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 20.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_chevrolet".tr,
                      value: state.frameTwentyModelObj?.radioList[7] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  CustomRadioButton(
                      width: 343.h,
                      text: "lbl_maruti".tr,
                      value: state.frameTwentyModelObj?.radioList[8] ?? "",
                      groupValue: state.vehicleMakeRadioGroup,
                      padding: EdgeInsets.symmetric(vertical: 21.v),
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<FrameTwentyBloc>()
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
