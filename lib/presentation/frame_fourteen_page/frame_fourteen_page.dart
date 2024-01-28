import '../frame_fourteen_page/widgets/frame_item_widget.dart';
import 'bloc/frame_fourteen_bloc.dart';
import 'models/frame_fourteen_model.dart';
import 'models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_floating_button.dart';
import 'package:rofyt/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class FrameFourteenPage extends StatelessWidget {
  const FrameFourteenPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourteenBloc>(
      create: (context) => FrameFourteenBloc(FrameFourteenState(
        frameFourteenModelObj: FrameFourteenModel(),
      ))
        ..add(FrameFourteenInitialEvent()),
      child: FrameFourteenPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 383.h,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcomeSection(context),
              SizedBox(height: 15.v),
              _buildVehicleDetailsSection(context),
              SizedBox(height: 7.v),
              _buildFileSection(context),
              SizedBox(height: 26.v),
              _buildVehicleDetailsSection1(context),
              SizedBox(height: 7.v),
              _buildFileSection1(context),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButtonSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return SizedBox(
      height: 330.v,
      width: 383.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 382.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 48.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup95,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 11.h,
                            top: 9.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_welcome_manas".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(height: 1.v),
                              Opacity(
                                opacity: 0.8,
                                child: Row(
                                  children: [
                                    Text(
                                      "lbl_austin".tr,
                                      style: CustomTextStyles.bodySmallBlack900,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl".tr,
                                        style:
                                            CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl_837494".tr,
                                        style:
                                            CustomTextStyles.bodySmallBlack900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgNotificationBlack900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                            top: 18.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.v),
                  CustomImageView(
                    height: 16.v,
                    width: 31.h,
                    margin: EdgeInsets.only(left: 112.h),
                  ),
                  SizedBox(height: 9.v),
                  CustomImageView(
                    height: 15.v,
                    width: 31.h,
                    margin: EdgeInsets.only(left: 112.h),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 1.h,
                right: 7.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "msg_monday_23rd_04_25".tr,
                          style: CustomTextStyles.bodyLargeBluegray900,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text(
                            "lbl_detail".tr,
                            style: CustomTextStyles.bodySmallPrimary.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
                    height: 69.v,
                    child: BlocSelector<FrameFourteenBloc, FrameFourteenState,
                        FrameFourteenModel?>(
                      selector: (state) => state.frameFourteenModelObj,
                      builder: (context, frameFourteenModelObj) {
                        return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: 8.h,
                            );
                          },
                          itemCount:
                              frameFourteenModelObj?.frameItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            FrameItemModel model =
                                frameFourteenModelObj?.frameItemList[index] ??
                                    FrameItemModel();
                            return FrameItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                top: 149.v,
                bottom: 117.v,
              ),
              child: IntrinsicWidth(
                child: SizedBox(
                  height: 64.v,
                  width: 406.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 46.v,
                          width: 375.h,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: SizedBox(
                            height: 46.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 46.v,
                          width: 39.h,
                          margin: EdgeInsets.only(left: 23.h),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: SizedBox(
                                    height: 46.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                      color: appTheme.whiteA700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 12.v),
                                  child: Text(
                                    "lbl_complete_stop".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 64.v,
                          width: 406.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 46.v,
                                  width: 406.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 46.v,
                                          width: 380.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              63.h, 13.v, 73.h, 13.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_my_vehicles".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Spacer(
                                                flex: 54,
                                              ),
                                              Text(
                                                "lbl_in_transit".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Spacer(
                                                flex: 45,
                                              ),
                                              Text(
                                                "lbl_complete".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "lbl_in_transit".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 64.v,
                                      width: 49.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        border: Border(
                                          top: BorderSide(
                                            color: appTheme.gray30001,
                                            width: 1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      child: Column(
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgNavRoute,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                          ),
                                          SizedBox(height: 4.v),
                                          Text(
                                            "lbl_route".tr,
                                            style: CustomTextStyles
                                                .bodyMediumPrimary,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 99.h,
                                          top: 10.v,
                                          bottom: 10.v,
                                        ),
                                        child: Column(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgNavMap,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                            ),
                                            SizedBox(height: 3.v),
                                            Text(
                                              "lbl_map".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleDetailsSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 30.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngClipartMar,
            height: 46.v,
            width: 80.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 165.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_maruti_suzuki".tr.toUpperCase(),
                            style: CustomTextStyles.bodyMediumRobotoBlack900,
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_swift_vdi".tr.toUpperCase(),
                            style: CustomTextStyles.bodySmallRobotoBlack90010_1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 7.v,
                      ),
                      child: Text(
                        "lbl_160_hr".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "msg_veh_no_wb_21".tr,
                style: CustomTextStyles.bodyMediumGray60013,
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            height: 44.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              endIndent: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFileSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildFrame(
                context,
                label: "lbl_insurance".tr,
              ),
            ),
            Spacer(
              flex: 29,
            ),
            _buildFrame1(
              context,
              labelText: "lbl_registration".tr,
            ),
            Spacer(
              flex: 32,
            ),
            _buildFrame2(
              context,
              label: "lbl_support".tr,
            ),
            Spacer(
              flex: 37,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildFrame(
                context,
                label: "lbl_additional".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleDetailsSection1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 28.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPngClipartMar,
            height: 46.v,
            width: 80.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 165.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 27.v,
                        width: 101.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "lbl_maruti_suzuki".tr.toUpperCase(),
                                  style:
                                      CustomTextStyles.bodyMediumRobotoBlack900,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "lbl_swift_vdi".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .bodySmallRobotoBlack90010_1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.v),
                        child: Text(
                          "lbl_160_hr".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "msg_veh_no_wb_21".tr,
                  style: CustomTextStyles.bodyMediumGray60013,
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 46.v,
            child: VerticalDivider(
              width: 4.h,
              thickness: 4.v,
              indent: 11.h,
              endIndent: 19.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFileSection1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 26.h,
          right: 16.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildFrame(
                context,
                label: "lbl_insurance".tr,
              ),
            ),
            Spacer(
              flex: 29,
            ),
            _buildFrame1(
              context,
              labelText: "lbl_registration".tr,
            ),
            Spacer(
              flex: 32,
            ),
            _buildFrame2(
              context,
              label: "lbl_support".tr,
            ),
            Spacer(
              flex: 37,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 47.v,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_additional".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButtonSection(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      backgroundColor: appTheme.gray100,
      child: CustomImageView(
        imagePath: ImageConstant.imgFileBlack900,
        height: 20.0.v,
        width: 20.0.h,
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String label,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillGrayTL20,
          child: CustomImageView(
            imagePath: ImageConstant.imgFileBlack900,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          label,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String labelText,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillOrange,
          child: CustomImageView(
            imagePath: ImageConstant.imgFileLime900,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          labelText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String label,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          decoration: IconButtonStyleHelper.fillGreen,
          child: CustomImageView(
            imagePath: ImageConstant.imgFileLightGreen800,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          label,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
      ],
    );
  }
}
