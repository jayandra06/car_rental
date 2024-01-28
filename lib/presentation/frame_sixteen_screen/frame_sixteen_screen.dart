import 'bloc/frame_sixteen_bloc.dart';
import 'models/frame_sixteen_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';

class FrameSixteenScreen extends StatelessWidget {
  FrameSixteenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixteenBloc>(
      create: (context) => FrameSixteenBloc(FrameSixteenState(
        frameSixteenModelObj: FrameSixteenModel(),
      ))
        ..add(FrameSixteenInitialEvent()),
      child: FrameSixteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameSixteenBloc, FrameSixteenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 1.v),
                  Text(
                    "msg_you_haven_t_any".tr,
                    style: CustomTextStyles.bodyLarge18,
                  ),
                  SizedBox(height: 2.v),
                  Container(
                    width: 290.h,
                    margin: EdgeInsets.only(
                      left: 47.h,
                      right: 44.h,
                    ),
                    child: Text(
                      "msg_your_request_is".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGray700.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 308.v,
          width: 383.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                                          style: CustomTextStyles
                                              .bodySmallBlack900,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "lbl".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: Text(
                                            "lbl_837494".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
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
                      ),
                      SizedBox(height: 116.v),
                      CustomImageView(
                        height: 16.v,
                        width: 31.h,
                        margin: EdgeInsets.only(left: 109.h),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 64.v,
                  width: 403.h,
                  margin: EdgeInsets.only(bottom: 89.v),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 46.v,
                          width: 375.h,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 64.v,
                          width: 403.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 46.v,
                                  width: 403.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 46.v,
                                          width: 377.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              63.h, 13.v, 70.h, 13.v),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "lbl_my_vehicles".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Spacer(
                                                flex: 54,
                                              ),
                                              Text(
                                                "lbl_in_transit".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Spacer(
                                                flex: 45,
                                              ),
                                              Text(
                                                "lbl_complete".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "lbl_in_transit".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 12.v),
                                          child: Text(
                                            "lbl_complete".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 64.v,
                                  width: 46.h,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  margin: EdgeInsets.only(bottom: 19.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 22.v,
                  ),
                  decoration: AppDecoration.fillBlack.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder40,
                  ),
                  child: Opacity(
                    opacity: 0.78,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrameGray700,
                      height: 34.v,
                      width: 44.h,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
              ),
            ],
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
