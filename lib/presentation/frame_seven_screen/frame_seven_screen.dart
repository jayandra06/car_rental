import 'bloc/frame_seven_bloc.dart';
import 'models/frame_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_checkbox_button.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class FrameSevenScreen extends StatelessWidget {
  const FrameSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSevenBloc>(
      create: (context) => FrameSevenBloc(FrameSevenState(
        frameSevenModelObj: FrameSevenModel(),
      ))
        ..add(FrameSevenInitialEvent()),
      child: FrameSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 383.h,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 40.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 79.adaptSize,
                width: 79.adaptSize,
                margin: EdgeInsets.only(left: 6.h),
              ),
              SizedBox(height: 14.v),
              Container(
                width: 250.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 95.h,
                ),
                child: Text(
                  "msg_accept_my_pride_s".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 335.h,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 11.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_by_selecting_i2".tr,
                          style: CustomTextStyles.bodyMediumff666666,
                        ),
                        TextSpan(
                          text: "lbl_terms_of_use".tr,
                          style: CustomTextStyles.bodyMediumff0a9eeb.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "msg_and_acknowledge".tr,
                          style: CustomTextStyles.bodyMediumff666666,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: CustomTextStyles.bodyMediumff0a9eeb.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: "msg_i_am_at_least".tr,
                          style: CustomTextStyles.bodyMediumff666666,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              CustomImageView(
                height: 16.v,
                width: 31.h,
                margin: EdgeInsets.only(left: 94.h),
              ),
              SizedBox(height: 2.v),
              _buildCheckboxStack(context),
              SizedBox(height: 67.v),
              Text(
                "msg_do_you_agree_to".tr,
                style: CustomTextStyles.bodyMediumGray700,
              ),
              SizedBox(height: 43.v),
              _buildCheckbox(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmit(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckboxStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(left: 6.h),
      color: theme.colorScheme.onPrimaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Container(
        height: 44.v,
        width: 343.h,
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: BlocSelector<FrameSevenBloc, FrameSevenState, bool?>(
                  selector: (state) => state.iAgreeOne,
                  builder: (context, iAgreeOne) {
                    return CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: "lbl_i_agree".tr,
                      value: iAgreeOne,
                      textStyle: theme.textTheme.bodyLarge,
                      onChange: (value) {
                        context
                            .read<FrameSevenBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      },
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: BlocSelector<FrameSevenBloc, FrameSevenState, bool?>(
                selector: (state) => state.iAgreeOne1,
                builder: (context, iAgreeOne1) {
                  return CustomCheckboxButton(
                    alignment: Alignment.center,
                    text: "lbl_i_agree".tr,
                    value: iAgreeOne1,
                    padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
                    textStyle: theme.textTheme.bodyLarge,
                    onChange: (value) {
                      context
                          .read<FrameSevenBloc>()
                          .add(ChangeCheckBox1Event(value: value));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckbox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: BlocSelector<FrameSevenBloc, FrameSevenState, bool?>(
        selector: (state) => state.checkbox,
        builder: (context, checkbox) {
          return CustomCheckboxButton(
            text: "lbl_i_agree".tr,
            value: checkbox,
            padding: EdgeInsets.fromLTRB(8.h, 10.v, 30.h, 10.v),
            textStyle: theme.textTheme.bodyLarge,
            onChange: (value) {
              context
                  .read<FrameSevenBloc>()
                  .add(ChangeCheckBox2Event(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(
        left: 21.h,
        right: 19.h,
        bottom: 53.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }
}
