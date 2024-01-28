import '../frame_eight_screen/widgets/userprofile_item_widget.dart';
import 'bloc/frame_eight_bloc.dart';
import 'models/frame_eight_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';

class FrameEightScreen extends StatelessWidget {
  FrameEightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEightBloc>(
      create: (context) => FrameEightBloc(FrameEightState(
        frameEightModelObj: FrameEightModel(),
      ))
        ..add(FrameEightInitialEvent()),
      child: FrameEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 664.v,
          width: 383.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildScreens(context),
              _buildHorizontalScroll(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 6.h,
                    bottom: 10.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFortyOne(context),
                      SizedBox(height: 6.v),
                      _buildUserProfile(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScreens(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 382.h,
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
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
                      left: 11.h,
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
                      top: 18.v,
                      bottom: 10.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100.v),
            CustomImageView(
              height: 16.v,
              width: 31.h,
              margin: EdgeInsets.only(left: 112.h),
            ),
            SizedBox(height: 9.v),
            CustomImageView(
              height: 15.v,
              width: 31.h,
              margin: EdgeInsets.only(left: 112.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          top: 149.v,
          bottom: 469.v,
        ),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 46.v,
            width: 406.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 46.v,
                    width: 375.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: SizedBox(
                      height: 46.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 46.v,
                    width: 39.h,
                    margin: EdgeInsets.only(left: 23.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: SizedBox(
                              height: 46.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.whiteA700,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 12.v),
                            child: Text(
                              "lbl_complete_stop".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 46.v,
                    width: 406.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 46.v,
                            width: 380.h,
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(63.h, 13.v, 73.h, 13.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "lbl_my_vehicles".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Spacer(
                                  flex: 54,
                                ),
                                Text(
                                  "lbl_in_transit".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                Spacer(
                                  flex: 45,
                                ),
                                Text(
                                  "lbl_complete".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_in_transit".tr,
                            style: CustomTextStyles.bodyMediumPrimary_1,
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
  Widget _buildFortyOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl_today".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallBlack900,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 4.v,
                  width: 10.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    top: 7.v,
                    bottom: 5.v,
                  ),
                ),
                Spacer(),
                Text(
                  "lbl_detail".tr,
                  style: CustomTextStyles.bodySmallPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: _buildFrame(
                  context,
                  distanceValue: "lbl_100".tr,
                  distanceUnit: "lbl_complete_trips".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildFrame(
                  context,
                  distanceValue: "lbl_1145_5".tr,
                  distanceUnit: "lbl_kilometers".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: _buildFrame(
                  context,
                  distanceValue: "lbl_200".tr,
                  distanceUnit: "msg_today_s_earnings".tr,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: BlocSelector<FrameEightBloc, FrameEightState, FrameEightModel?>(
        selector: (state) => state.frameEightModelObj,
        builder: (context, frameEightModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 7.v,
              );
            },
            itemCount: frameEightModelObj?.userprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  frameEightModelObj?.userprofileItemList[index] ??
                      UserprofileItemModel();
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
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

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String distanceValue,
    required String distanceUnit,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineGray300012.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(
                distanceValue,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: appTheme.blueGray90001,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                distanceUnit,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.blueGray90001,
                ),
              ),
            ],
          ),
        ),
      ),
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
