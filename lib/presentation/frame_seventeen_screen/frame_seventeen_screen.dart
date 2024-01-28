import 'bloc/frame_seventeen_bloc.dart';
import 'models/frame_seventeen_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/core/utils/validation_functions.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/appbar_title_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_text_form_field.dart';

class FrameSeventeenScreen extends StatelessWidget {
  FrameSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSeventeenBloc>(
      create: (context) => FrameSeventeenBloc(FrameSeventeenState(
        frameSeventeenModelObj: FrameSeventeenModel(),
      ))
        ..add(FrameSeventeenInitialEvent()),
      child: FrameSeventeenScreen(),
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
                width: 386.h,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "msg_enter_your_email2".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "msg_add_your_email_address".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 26.h,
                        right: 17.h,
                      ),
                      child: BlocSelector<FrameSeventeenBloc,
                          FrameSeventeenState, TextEditingController?>(
                        selector: (state) => state.dateController,
                        builder: (context, dateController) {
                          return CustomTextFormField(
                            controller: dateController,
                            hintText: "msg_demoemail_gmail_com".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            alignment: Alignment.center,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGrayTL4,
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    SizedBox(height: 10.v),
                    _buildTen(context),
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
      title: Padding(
        padding: EdgeInsets.only(left: 23.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 35.h),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowDownBlueGray90001,
                  ),
                  AppbarTitle(
                    text: "lbl_email".tr,
                    margin: EdgeInsets.only(
                      left: 124.h,
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
                    width: 111.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  Container(
                    height: 4.v,
                    width: 111.h,
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
          width: 111.h,
          margin: EdgeInsets.fromLTRB(4.h, 45.v, 17.h, 6.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Container(
      width: 383.h,
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup95,
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
            text: "lbl_next".tr,
            margin: EdgeInsets.only(left: 6.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL4,
            buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
          ),
        ],
      ),
    );
  }
}
