import 'bloc/frame_eighteen_bloc.dart';
import 'models/frame_eighteen_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_outlined_button.dart';
import 'package:rofyt/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class FrameEighteenPage extends StatefulWidget {
  const FrameEighteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  FrameEighteenPageState createState() => FrameEighteenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEighteenBloc>(
      create: (context) => FrameEighteenBloc(FrameEighteenState(
        frameEighteenModelObj: FrameEighteenModel(),
      ))
        ..add(FrameEighteenInitialEvent()),
      child: FrameEighteenPage(),
    );
  }
}

class FrameEighteenPageState extends State<FrameEighteenPage>
    with AutomaticKeepAliveClientMixin<FrameEighteenPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    SizedBox(height: 28.v),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          right: 15.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_mobile_number".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 3.v),
                            BlocBuilder<FrameEighteenBloc, FrameEighteenState>(
                              builder: (context, state) {
                                return CustomPhoneNumber(
                                  country: state.selectedCountry ??
                                      CountryPickerUtils.getCountryByPhoneCode(
                                          '1'),
                                  controller: state.phoneNumberController,
                                  onTap: (Country value) {
                                    context
                                        .read<FrameEighteenBloc>()
                                        .add(ChangeCountryEvent(value: value));
                                  },
                                );
                              },
                            ),
                            SizedBox(height: 13.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_we_will_send_you2".tr,
                                    style: CustomTextStyles.bodyMediumff666666,
                                  ),
                                  TextSpan(
                                    text: "msg_4_digit_sign_code".tr,
                                    style: CustomTextStyles.bodyMediumff666666,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 3.v),
                            CustomImageView(
                              height: 16.v,
                              width: 31.h,
                              margin: EdgeInsets.only(left: 84.h),
                            ),
                            CustomElevatedButton(
                              height: 48.v,
                              text: "lbl_sign_in".tr,
                              buttonStyle: CustomButtonStyles.fillPrimaryTL4,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeWhiteA700,
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 83.h),
                              child: Text(
                                "msg_if_you_have_not".tr,
                                style: CustomTextStyles.bodyMediumGray70013,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            CustomOutlinedButton(
                              height: 48.v,
                              text: "lbl_register_now".tr,
                              margin: EdgeInsets.symmetric(horizontal: 8.h),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargePrimary,
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
      ),
    );
  }
}
