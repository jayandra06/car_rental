import 'bloc/car_owner_app_bloc.dart';
import 'models/car_owner_app_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class CarOwnerAppScreen extends StatelessWidget {
  const CarOwnerAppScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CarOwnerAppBloc>(
      create: (context) => CarOwnerAppBloc(CarOwnerAppState(
        carOwnerAppModelObj: CarOwnerAppModel(),
      ))
        ..add(CarOwnerAppInitialEvent()),
      child: CarOwnerAppScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerAppBloc, CarOwnerAppState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 386.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildEleven(context),
                  SizedBox(height: 5.v),
                  _buildLineThree(context),
                ],
              ),
            ),
            bottomNavigationBar: _buildContinue(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      width: 386.h,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgFill1,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 94.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "msg_for_getting_approval".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 326.h,
            margin: EdgeInsets.only(right: 9.h),
            child: Text(
              "msg_we_kindly_request".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeInterGray700.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 29.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 29.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 277.v,
            width: 27.h,
            margin: EdgeInsets.only(bottom: 58.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 265.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                      color: theme.colorScheme.primary,
                      indent: 2.h,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 24.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "lbl_1".tr,
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 3.h,
                      bottom: 73.v,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_23".tr,
                            style: CustomTextStyles.bodyMediumWhiteA700,
                          ),
                        ),
                        SizedBox(height: 65.v),
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Text(
                            "lbl_32".tr,
                            style: CustomTextStyles.bodyMediumWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 24.adaptSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder12,
                    ),
                    child: Text(
                      "lbl_42".tr,
                      style: CustomTextStyles.bodyMediumWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(4.h, 2.v, 9.h, 37.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_verify_profile".tr,
                    style: CustomTextStyles.bodyLargeInter,
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 278.h,
                    child: Text(
                      "msg_to_proceed_please".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray70013.copyWith(
                        height: 1.54,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "msg_upload_docs_and".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5.v),
                  Container(
                    width: 250.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: Text(
                      "msg_we_require_a_kyc".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray70013.copyWith(
                        height: 1.54,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Text(
                    "msg_fitness_verification".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_kindly_enter_driver".tr,
                    style: CustomTextStyles.bodyMediumGray70013,
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "msg_wait_for_approval".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "msg_kindly_enter_driver".tr,
                    style: CustomTextStyles.bodyMediumGray70013,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      text: "lbl_continue".tr,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 21.h,
        bottom: 62.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL4,
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }
}
