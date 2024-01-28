import 'bloc/frame_thirteen_bloc.dart';
import 'models/frame_thirteen_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_checkbox_button.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_pin_code_text_field.dart';

class FrameThirteenScreen extends StatelessWidget {
  const FrameThirteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThirteenBloc>(
      create: (context) => FrameThirteenBloc(FrameThirteenState(
        frameThirteenModelObj: FrameThirteenModel(),
      ))
        ..add(FrameThirteenInitialEvent()),
      child: FrameThirteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 386.h,
          child: Column(
            children: [
              _buildNineteen(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 4.h,
                              ),
                              child: _buildFrame(
                                context,
                                lastName: "lbl_first_name".tr,
                                firstName: "lbl_mandip".tr,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 4.h,
                              ),
                              child: _buildFrame(
                                context,
                                lastName: "lbl_last_name".tr,
                                firstName: "lbl_roy".tr,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 4.h,
                              ),
                              child: _buildFrame(
                                context,
                                lastName: "lbl_full_adress".tr,
                                firstName: "lbl_kolkata".tr,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 4.h,
                              ),
                              child: _buildFrame(
                                context,
                                lastName: "lbl_email_id".tr,
                                firstName: "lbl_jjvfghh".tr,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 4.h,
                              ),
                              child: _buildFrame(
                                context,
                                lastName: "lbl_phone_number".tr,
                                firstName: "lbl_67890987654".tr,
                              ),
                            ),
                            _buildFrame6(context),
                            _buildOtpView(context),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        _buildDone(context),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: _buildFrame(
                            context,
                            lastName: "lbl_aadhar_no".tr,
                            firstName: "lbl_1234_4321_2134".tr,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildFrame8(context),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: _buildFrame(
                            context,
                            lastName: "lbl_pan_no".tr,
                            firstName: "lbl_83jue83".tr,
                          ),
                        ),
                      ],
                    ),
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
  Widget _buildNineteen(BuildContext context) {
    return Container(
      width: 375.h,
      margin: EdgeInsets.only(right: 11.h),
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          CustomAppBar(
            height: 30.v,
            leadingWidth: 43.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownBlueGray90001,
              margin: EdgeInsets.only(left: 13.h),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "msg_car_owner_details".tr,
            ),
          ),
          SizedBox(height: 29.v),
          Container(
            width: 331.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 27.h,
            ),
            child: Text(
              "msg_enter_your_info".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendOtp(BuildContext context) {
    return CustomElevatedButton(
      width: 93.h,
      text: "lbl_send_otp".tr,
    );
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 1.h,
        right: 4.h,
      ),
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
            horizontal: 12.h,
            vertical: 4.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child:
                    BlocSelector<FrameThirteenBloc, FrameThirteenState, bool?>(
                  selector: (state) => state.verifyYourNumber,
                  builder: (context, verifyYourNumber) {
                    return CustomCheckboxButton(
                      text: "msg_verify_your_number".tr,
                      value: verifyYourNumber,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        context
                            .read<FrameThirteenBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              _buildSendOtp(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: BlocSelector<FrameThirteenBloc, FrameThirteenState,
          TextEditingController?>(
        selector: (state) => state.otpController,
        builder: (context, otpController) {
          return CustomPinCodeTextField(
            context: context,
            controller: otpController,
            onChanged: (value) {
              otpController?.text = value;
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDone(BuildContext context) {
    return CustomElevatedButton(
      width: 59.h,
      text: "lbl_done".tr,
    );
  }

  /// Section Widget
  Widget _buildUpload(BuildContext context) {
    return CustomElevatedButton(
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
    );
  }

  /// Section Widget
  Widget _buildFrame8(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
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
                child:
                    BlocSelector<FrameThirteenBloc, FrameThirteenState, bool?>(
                  selector: (state) => state.aadharUploadFront,
                  builder: (context, aadharUploadFront) {
                    return CustomCheckboxButton(
                      text: "msg_aadhar_upload_front".tr,
                      value: aadharUploadFront,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        context
                            .read<FrameThirteenBloc>()
                            .add(ChangeCheckBox1Event(value: value));
                      },
                    );
                  },
                ),
              ),
              _buildUpload(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String lastName,
    required String firstName,
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
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              lastName,
              style: CustomTextStyles.bodyMedium15.copyWith(
                color: appTheme.blueGray90001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              firstName,
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
