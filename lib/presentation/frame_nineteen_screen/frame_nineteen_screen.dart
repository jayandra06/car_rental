import 'bloc/frame_nineteen_bloc.dart';
import 'models/frame_nineteen_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_pin_code_text_field.dart';

class FrameNineteenScreen extends StatelessWidget {
  const FrameNineteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameNineteenBloc>(
      create: (context) => FrameNineteenBloc(FrameNineteenState(
        frameNineteenModelObj: FrameNineteenModel(),
      ))
        ..add(FrameNineteenInitialEvent()),
      child: FrameNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 386.h,
          padding: EdgeInsets.symmetric(vertical: 28.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_otp_verification".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_enter_the_otp_sent".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 18.h,
                ),
                child: BlocSelector<FrameNineteenBloc, FrameNineteenState,
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
              ),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 113.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_didn_t_receive_otp2".tr,
                        style: CustomTextStyles.bodyMediumff66666613,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_resend".tr,
                        style: CustomTextStyles.bodyMediumffff2626.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              SizedBox(height: 5.v),
              _buildTwoColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 385.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorStroke,
        margin: EdgeInsets.fromLTRB(28.h, 20.v, 342.h, 20.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoColumn(BuildContext context) {
    return Container(
      width: 386.h,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup2Gray60001,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 198.v),
          CustomElevatedButton(
            height: 48.v,
            text: "msg_verify_continue".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.bodyLargeBlack90017,
          ),
        ],
      ),
    );
  }
}
