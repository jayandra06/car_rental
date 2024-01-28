import 'bloc/frame_five_bloc.dart';
import 'models/frame_five_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/core/utils/validation_functions.dart';
import 'package:rofyt/widgets/app_bar/appbar_title_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_text_form_field.dart';

class FrameFiveScreen extends StatelessWidget {
  FrameFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFiveBloc>(
      create: (context) => FrameFiveBloc(FrameFiveState(
        frameFiveModelObj: FrameFiveModel(),
      ))
        ..add(FrameFiveInitialEvent()),
      child: FrameFiveScreen(),
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
                  vertical: 17.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_change_password".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      width: 314.h,
                      margin: EdgeInsets.only(right: 38.h),
                      child: Text(
                        "msg_enter_the_email".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray700.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v),
                    Text(
                      "lbl_email".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child: BlocSelector<FrameFiveBloc, FrameFiveState,
                          TextEditingController?>(
                        selector: (state) => state.emailController,
                        builder: (context, emailController) {
                          return CustomTextFormField(
                            controller: emailController,
                            hintText: "msg_enter_your_email".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 10.v, 10.h, 10.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmarkGray700,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 40.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.only(
                              top: 11.v,
                              right: 30.h,
                              bottom: 11.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 16.v,
                      width: 31.h,
                      margin: EdgeInsets.only(left: 94.h),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 37.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_if_you_remember2".tr,
                              style: CustomTextStyles.bodyMediumff66666613,
                            ),
                            TextSpan(
                              text: "lbl_login_here".tr,
                              style: CustomTextStyles.bodyMediumff00b74c,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildRequestPasswordChange(context),
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
  Widget _buildRequestPasswordChange(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "msg_request_password".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 23.h,
        bottom: 42.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
    );
  }
}
