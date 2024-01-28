import 'bloc/owner_dashboard_bloc.dart';
import 'models/owner_dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class OwnerDashboardScreen extends StatelessWidget {
  OwnerDashboardScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardBloc>(
      create: (context) => OwnerDashboardBloc(OwnerDashboardState(
        ownerDashboardModelObj: OwnerDashboardModel(),
      ))
        ..add(OwnerDashboardInitialEvent()),
      child: OwnerDashboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerDashboardBloc, OwnerDashboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 669.v,
              width: 383.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildWelcomeSection(context),
                          SizedBox(height: 69.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 109.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    height: 16.v,
                                    width: 31.h,
                                    margin: EdgeInsets.only(
                                      top: 47.v,
                                      bottom: 17.v,
                                    ),
                                  ),
                                  Container(
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    margin: EdgeInsets.only(left: 15.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.h,
                                      vertical: 22.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder40,
                                    ),
                                    child: Opacity(
                                      opacity: 0.78,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFrameGray700,
                                        height: 34.v,
                                        width: 44.h,
                                        alignment: Alignment.centerRight,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Text(
                            "lbl_your_cars_list".tr,
                            style: CustomTextStyles.bodyLarge18,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "msg_you_don_t_have_any".tr,
                            style: CustomTextStyles.bodyMediumGray700,
                          ),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            height: 53.v,
                            width: 236.h,
                            text: "lbl_add_cars".tr,
                            buttonStyle: CustomButtonStyles.fillGreen,
                            buttonTextStyle: theme.textTheme.headlineSmall!,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildVehicleSection(context),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: _buildBottomBarSection(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: 379.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 60.v,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_welcome_manas".tr,
                  style: CustomTextStyles.titleLargeAbel,
                ),
                SizedBox(height: 2.v),
                Opacity(
                  opacity: 0.8,
                  child: Row(
                    children: [
                      Text(
                        "lbl_kolkata".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_837494".tr,
                          style: CustomTextStyles.bodySmallBlack900,
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
              top: 10.v,
              bottom: 20.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 155.v,
          bottom: 450.v,
        ),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 64.v,
            width: 382.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 18.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 36.h,
                      vertical: 6.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 9.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_my_vehicles".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 1.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle,
                                height: 5.v,
                                width: 37.h,
                                margin: EdgeInsets.only(left: 10.h),
                              ),
                            ],
                          ),
                        ),
                        Spacer(
                          flex: 39,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.v,
                            bottom: 7.v,
                          ),
                          child: Text(
                            "lbl_in_transit".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(
                          flex: 33,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 9.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "lbl_complete".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(
                          flex: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 64.v,
                    width: 198.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 64.v,
                            width: 51.h,
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
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 47.h,
                              top: 10.v,
                              bottom: 10.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgNavRoute,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_route".tr,
                                        style:
                                            CustomTextStyles.bodyMediumPrimary,
                                      ),
                                    ],
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgNavMap,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                      ),
                                      SizedBox(height: 3.v),
                                      Text(
                                        "lbl_map".tr,
                                        style:
                                            CustomTextStyles.bodyMediumBlack900,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Route:
        return AppRoutes.frameFourteenPage;
      case BottomBarEnum.Map:
        return "/";
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.frameFourteenPage:
        return FrameFourteenPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
