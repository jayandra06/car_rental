import 'bloc/frame_six_bloc.dart';
import 'models/frame_six_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';

class FrameSixScreen extends StatelessWidget {
  FrameSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixBloc>(
      create: (context) => FrameSixBloc(FrameSixState(
        frameSixModelObj: FrameSixModel(),
      ))
        ..add(FrameSixInitialEvent()),
      child: FrameSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameSixBloc, FrameSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPageOneStack(context),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.only(left: 36.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 86.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 18.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_pick_up_location2".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                                TextSpan(
                                  text: " \n\n".tr,
                                  style:
                                      CustomTextStyles.bodySmallRobotoff000000,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 151.h,
                          margin: EdgeInsets.only(left: 13.h),
                          child: Text(
                            "msg_drive_hyderabad".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallRobotoBlack90010,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 33.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 93.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 18.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_drop_off_location2".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                                TextSpan(
                                  text: " \n\n".tr,
                                  style:
                                      CustomTextStyles.bodySmallRobotoff000000,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 151.h,
                          margin: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "msg_drive_hyderabad".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodySmallRobotoBlack90010,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPageOneStack(BuildContext context) {
    return SizedBox(
      height: 293.v,
      width: 383.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 293.v,
              width: 383.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    height: 16.v,
                    width: 31.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 115.h,
                      bottom: 26.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 383.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.h,
                            vertical: 48.v,
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 9.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_welcome_manas".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    SizedBox(height: 1.v),
                                    Opacity(
                                      opacity: 0.8,
                                      child: Row(
                                        children: [
                                          Text(
                                            "lbl_austin".tr,
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
                                imagePath:
                                    ImageConstant.imgNotificationBlack900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 18.v,
                                  bottom: 10.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 60.v),
                        Container(
                          height: 47.v,
                          width: 245.h,
                          margin: EdgeInsets.only(left: 13.h),
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPngClipartMar,
                                height: 46.v,
                                width: 80.h,
                                alignment: Alignment.centerLeft,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 76.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: Text(
                                                  "lbl_maruti_suzuki"
                                                      .tr
                                                      .toUpperCase(),
                                                  style: CustomTextStyles
                                                      .bodyMediumRobotoBlack900,
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.5,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text(
                                                    "lbl_swift_vdi"
                                                        .tr
                                                        .toUpperCase(),
                                                    style: CustomTextStyles
                                                        .bodySmallRobotoBlack90010_1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.v),
                                            child: Text(
                                              "lbl_160_hr".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 1.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "msg_veh_no_wb_21".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray60013,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          height: 15.v,
                          width: 31.h,
                          margin: EdgeInsets.only(left: 121.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 51.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_total_earning".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: "lbl4".tr,
                      style: theme.textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_3500".tr,
                      style: CustomTextStyles.bodySmallRobotoff000000,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
