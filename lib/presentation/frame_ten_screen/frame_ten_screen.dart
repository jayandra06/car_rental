import 'bloc/frame_ten_bloc.dart';
import 'models/frame_ten_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/appbar_title.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';
import 'package:rofyt/widgets/custom_phone_number.dart';

class FrameTenScreen extends StatelessWidget {
  FrameTenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTenBloc>(
      create: (context) => FrameTenBloc(FrameTenState(
        frameTenModelObj: FrameTenModel(),
      ))
        ..add(FrameTenInitialEvent()),
      child: FrameTenScreen(),
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
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildRowView(context),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "msg_enter_your_mobile".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "msg_we_will_send_you3".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.h),
                      child: BlocBuilder<FrameTenBloc, FrameTenState>(
                        builder: (context, state) {
                          return CustomPhoneNumber(
                            country: state.selectedCountry ??
                                CountryPickerUtils.getCountryByPhoneCode('1'),
                            controller: state.phoneNumberController,
                            onTap: (Country value) {
                              context
                                  .read<FrameTenBloc>()
                                  .add(ChangeCountryEvent(value: value));
                            },
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    SizedBox(height: 29.v),
                    _buildColumnFour(context),
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
      height: 38.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownBlueGray90001,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_phone_number".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowView(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                color: appTheme.blueGray100,
              ),
            ),
            Container(
              height: 4.v,
              width: 111.h,
              margin: EdgeInsets.only(left: 3.h),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
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
            text: "lbl_generate_otp".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL4,
            buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
          ),
        ],
      ),
    );
  }
}
