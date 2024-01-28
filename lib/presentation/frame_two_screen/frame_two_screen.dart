import 'bloc/frame_two_bloc.dart';
import 'models/frame_two_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/appbar_title_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_checkbox_button.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class FrameTwoScreen extends StatelessWidget {
  const FrameTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTwoBloc>(
      create: (context) => FrameTwoBloc(FrameTwoState(
        frameTwoModelObj: FrameTwoModel(),
      ))
        ..add(FrameTwoInitialEvent()),
      child: FrameTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 383.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_add_your_vehicle".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 300.h,
                margin: EdgeInsets.only(
                  left: 8.h,
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
              _buildAddYourVehicle(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_upload_certificate".tr,
                  style: CustomTextStyles.bodyMedium15,
                ),
              ),
              SizedBox(height: 16.v),
              _buildFrame(context),
              SizedBox(height: 12.v),
              _buildFrame1(context),
              SizedBox(height: 12.v),
              _buildFrame2(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSaveContinueButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 58.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowDownBlueGray90001,
                  ),
                  AppbarTitle(
                    text: "lbl_vehicle".tr,
                    margin: EdgeInsets.only(
                      left: 119.h,
                      top: 4.v,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  Container(
                    height: 4.v,
                    width: 82.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  Container(
                    height: 4.v,
                    width: 82.h,
                    margin: EdgeInsets.only(left: 4.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  Container(
                    height: 4.v,
                    width: 82.h,
                    margin: EdgeInsets.only(left: 4.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 4.v,
          width: 82.h,
          margin: EdgeInsets.fromLTRB(4.h, 45.v, 16.h, 6.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddYourVehicle(BuildContext context) {
    return Container(
      height: 191.v,
      width: 343.h,
      margin: EdgeInsets.only(left: 8.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            height: 16.v,
            width: 31.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 85.h,
              bottom: 79.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildVehicleType(
                  context,
                  vehicleTypeText: "lbl_vehicle_make".tr,
                  hatchbackText: "lbl_tata_motors".tr,
                ),
                _buildVehicleType(
                  context,
                  vehicleTypeText: "lbl_vehicle_type".tr,
                  hatchbackText: "lbl_hatchback".tr,
                ),
                _buildVehicleType(
                  context,
                  vehicleTypeText: "msg_vehicle_plate_number".tr,
                  hatchbackText: "lbl_bs_730_us".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClearButton1(BuildContext context) {
    return CustomElevatedButton(
      width: 93.h,
      text: "lbl_clear".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
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
                child: BlocSelector<FrameTwoBloc, FrameTwoState, bool?>(
                  selector: (state) => state.checkmark,
                  builder: (context, checkmark) {
                    return CustomCheckboxButton(
                      text: "msg_insurance_certificate".tr,
                      value: checkmark,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      textStyle: theme.textTheme.bodyMedium,
                      onChange: (value) {
                        context
                            .read<FrameTwoBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              _buildClearButton1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClearButton2(BuildContext context) {
    return CustomElevatedButton(
      width: 93.h,
      text: "lbl_clear".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
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
                child: BlocSelector<FrameTwoBloc, FrameTwoState, bool?>(
                  selector: (state) => state.rc,
                  builder: (context, rc) {
                    return CustomCheckboxButton(
                      text: "lbl_rc".tr,
                      value: rc,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      textStyle: theme.textTheme.bodyMedium,
                      onChange: (value) {
                        context
                            .read<FrameTwoBloc>()
                            .add(ChangeCheckBox1Event(value: value));
                      },
                    );
                  },
                ),
              ),
              _buildClearButton2(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClearButton3(BuildContext context) {
    return CustomElevatedButton(
      width: 93.h,
      text: "lbl_clear".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.h),
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
                child: BlocSelector<FrameTwoBloc, FrameTwoState, bool?>(
                  selector: (state) => state.cBook,
                  builder: (context, cBook) {
                    return CustomCheckboxButton(
                      text: "lbl_c_book".tr,
                      value: cBook,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      textStyle: theme.textTheme.bodyMedium,
                      onChange: (value) {
                        context
                            .read<FrameTwoBloc>()
                            .add(ChangeCheckBox2Event(value: value));
                      },
                    );
                  },
                ),
              ),
              _buildClearButton3(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveContinueButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_save_continue".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 16.h,
        bottom: 52.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }

  /// Common widget
  Widget _buildVehicleType(
    BuildContext context, {
    required String vehicleTypeText,
    required String hatchbackText,
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
              hatchbackText,
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
