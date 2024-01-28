import 'bloc/frame_three_bloc.dart';
import 'models/frame_three_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/core/utils/validation_functions.dart';
import 'package:rofyt/widgets/app_bar/appbar_title_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_text_form_field.dart';

class FrameThreeScreen extends StatelessWidget {
  FrameThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameThreeBloc>(
      create: (context) => FrameThreeBloc(FrameThreeState(
        frameThreeModelObj: FrameThreeModel(),
      ))
        ..add(FrameThreeInitialEvent()),
      child: FrameThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 383.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 13.v,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_create_new_password".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 302.h,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          right: 49.h,
                        ),
                        child: Text(
                          "msg_your_new_password".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_password".tr,
                          style: CustomTextStyles.bodyMediumBluegray900,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 9.h,
                      ),
                      child: BlocSelector<FrameThreeBloc, FrameThreeState,
                          TextEditingController?>(
                        selector: (state) => state.passwordController,
                        builder: (context, passwordController) {
                          return CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl2".tr,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildPassword(context),
                    SizedBox(height: 22.v),
                    Text(
                      "msg_must_be_at_least".tr,
                      style: CustomTextStyles.bodyMediumGray70013,
                    ),
                    SizedBox(height: 9.v),
                    CustomElevatedButton(
                      height: 44.v,
                      text: "lbl_reset_password".tr,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        right: 7.h,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
                      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 87.v,
      centerTitle: true,
      title: SizedBox(
        height: 87.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgFill1,
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.fromLTRB(25.h, 38.v, 335.h, 19.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_password".tr,
            style: CustomTextStyles.bodyMediumBluegray900,
          ),
          SizedBox(height: 3.v),
          BlocBuilder<FrameThreeBloc, FrameThreeState>(
            builder: (context, state) {
              return CustomTextFormField(
                controller: state.confirmpasswordController,
                hintText: "lbl2".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    context.read<FrameThreeBloc>().add(
                        ChangePasswordVisibilityEvent(
                            value: !state.isShowPassword));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: state.isShowPassword,
                contentPadding: EdgeInsets.only(
                  left: 16.h,
                  top: 11.v,
                  bottom: 11.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return SizedBox(
      height: 67.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            height: 16.v,
            width: 31.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 93.h),
          ),
          _buildConfirmPassword(context),
        ],
      ),
    );
  }
}
