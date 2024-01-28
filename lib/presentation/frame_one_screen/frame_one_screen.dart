import 'bloc/frame_one_bloc.dart';
import 'models/frame_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameOneBloc>(
      create: (context) => FrameOneBloc(FrameOneState(
        frameOneModelObj: FrameOneModel(),
      ))
        ..add(FrameOneInitialEvent()),
      child: FrameOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameOneBloc, FrameOneState>(
      builder: (context, state) {
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
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildButtonSaveContinue(context),
          ),
        );
      },
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
                _buildRowVehicleModel(
                  context,
                  vehicleModelText: "lbl_vehicle_make".tr,
                  dashText: "lbl3".tr,
                ),
                _buildRowVehicleModel(
                  context,
                  vehicleModelText: "lbl_vehicle_model".tr,
                  dashText: "lbl3".tr,
                ),
                _buildRowVehicleModel(
                  context,
                  vehicleModelText: "msg_vehicle_plate_number".tr,
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
  Widget _buildButtonSaveContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_save_continue".tr,
      margin: EdgeInsets.only(
        left: 21.h,
        right: 19.h,
        bottom: 35.v,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }

  /// Common widget
  Widget _buildRowVehicleModel(
    BuildContext context, {
    required String vehicleModelText,
    required String dashText,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 21.v,
        bottom: 20.v,
      ),
      decoration: AppDecoration.outlineGray30001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            vehicleModelText,
            style: CustomTextStyles.bodyMedium15.copyWith(
              color: appTheme.blueGray90001,
            ),
          ),
          Text(
            dashText,
            style: CustomTextStyles.bodyMediumGray70015_2.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ],
      ),
    );
  }
}
