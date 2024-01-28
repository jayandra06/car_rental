import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Eleven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Eighteen - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameEighteenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Fourteen - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameFourteenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Owner dashboard".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ownerDashboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Owner dashboard(in Transit) One - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .ownerDashboardInTransitOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Owner dashboard(in Transit) - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .ownerDashboardInTransitTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Twelve".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Owner dashboard (My Cars List) - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .ownerDashboardMyCarsListTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "owner rent ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ownerRentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Car owner app".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.carOwnerAppScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Nineteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameNineteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.frameSeventeenScreen),
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
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
