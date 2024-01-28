import 'bloc/frame_eleven_bloc.dart';
import 'models/frame_eleven_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_checkbox_button.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class FrameElevenScreen extends StatelessWidget {
  const FrameElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameElevenBloc>(
      create: (context) => FrameElevenBloc(FrameElevenState(
        frameElevenModelObj: FrameElevenModel(),
      ))
        ..add(FrameElevenInitialEvent()),
      child: FrameElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 383.h,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowView(context),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_add_your_vehicle".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 300.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  right: 42.h,
                ),
                child: Text(
                  "msg_please_provide_details".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              _buildStackPageOne(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "msg_upload_car_photos".tr,
                  style: CustomTextStyles.bodyMedium15,
                ),
              ),
              SizedBox(height: 16.v),
              _buildFrontRow(context),
              SizedBox(height: 12.v),
              _buildBackRow(context),
              SizedBox(height: 12.v),
              _buildRightSideRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlueGray90001,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_vehicle".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 4.v,
            width: 111.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
          ),
          Container(
            height: 4.v,
            width: 111.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
          ),
          Container(
            height: 4.v,
            width: 111.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackPageOne(BuildContext context) {
    return Container(
      height: 192.v,
      width: 343.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            height: 16.v,
            width: 31.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 88.h,
              top: 78.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildVehicleTypeRow(
                  context,
                  vehicleTypeText: "lbl_vehicle_make".tr,
                  dashText: "lbl3".tr,
                ),
                _buildVehicleTypeRow(
                  context,
                  vehicleTypeText: "lbl_vehicle_type".tr,
                  dashText: "lbl3".tr,
                ),
                _buildVehicleTypeRow(
                  context,
                  vehicleTypeText: "msg_vehicle_plate_number".tr,
                  dashText: "lbl3".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrontRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: DottedBorder(
        color: appTheme.gray30001,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(4),
        borderType: BorderType.RRect,
        dashPattern: [
          2,
          2,
        ],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 4.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
                child: BlocSelector<FrameElevenBloc, FrameElevenState, bool?>(
                  selector: (state) => state.front,
                  builder: (context, front) {
                    return CustomCheckboxButton(
                      text: "lbl_front".tr,
                      value: front,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        context
                            .read<FrameElevenBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              CustomElevatedButton(
                width: 93.h,
                text: "lbl_upload".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: DottedBorder(
        color: appTheme.gray30001,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(4),
        borderType: BorderType.RRect,
        dashPattern: [
          2,
          2,
        ],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 4.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
                child: BlocSelector<FrameElevenBloc, FrameElevenState, bool?>(
                  selector: (state) => state.back,
                  builder: (context, back) {
                    return CustomCheckboxButton(
                      text: "lbl_back".tr,
                      value: back,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        context
                            .read<FrameElevenBloc>()
                            .add(ChangeCheckBox1Event(value: value));
                      },
                    );
                  },
                ),
              ),
              CustomElevatedButton(
                width: 93.h,
                text: "lbl_upload".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRightSideRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: DottedBorder(
        color: appTheme.gray30001,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(4),
        borderType: BorderType.RRect,
        dashPattern: [
          2,
          2,
        ],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 4.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
                child: BlocSelector<FrameElevenBloc, FrameElevenState, bool?>(
                  selector: (state) => state.rightSide,
                  builder: (context, rightSide) {
                    return CustomCheckboxButton(
                      text: "lbl_right_side".tr,
                      value: rightSide,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        context
                            .read<FrameElevenBloc>()
                            .add(ChangeCheckBox2Event(value: value));
                      },
                    );
                  },
                ),
              ),
              CustomElevatedButton(
                width: 93.h,
                text: "lbl_upload".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildVehicleTypeRow(
    BuildContext context, {
    required String vehicleTypeText,
    required String dashText,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 20.v,
        bottom: 19.v,
      ),
      decoration: AppDecoration.outlineGray30001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              vehicleTypeText,
              style: CustomTextStyles.bodyMedium15.copyWith(
                color: appTheme.blueGray90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              dashText,
              style: CustomTextStyles.bodyMediumGray70015_2.copyWith(
                color: appTheme.gray700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
