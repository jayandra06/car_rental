import 'bloc/owner_dashboard_in_transit_tab_container_bloc.dart';
import 'models/owner_dashboard_in_transit_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_page/owner_dashboard_in_transit_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';

class OwnerDashboardInTransitTabContainerScreen extends StatefulWidget {
  const OwnerDashboardInTransitTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardInTransitTabContainerScreenState createState() =>
      OwnerDashboardInTransitTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardInTransitTabContainerBloc>(
      create: (context) => OwnerDashboardInTransitTabContainerBloc(
          OwnerDashboardInTransitTabContainerState(
        ownerDashboardInTransitTabContainerModelObj:
            OwnerDashboardInTransitTabContainerModel(),
      ))
        ..add(OwnerDashboardInTransitTabContainerInitialEvent()),
      child: OwnerDashboardInTransitTabContainerScreen(),
    );
  }
}

class OwnerDashboardInTransitTabContainerScreenState
    extends State<OwnerDashboardInTransitTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerDashboardInTransitTabContainerBloc,
        OwnerDashboardInTransitTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  _buildOwnerDashboard(context),
                  SizedBox(
                    height: 469.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        OwnerDashboardInTransitPage.builder(context),
                        OwnerDashboardInTransitPage.builder(context),
                        OwnerDashboardInTransitPage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 5.h,
              ),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOwnerDashboard(BuildContext context) {
    return SizedBox(
      height: 201.v,
      width: 383.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 379.h,
              margin: EdgeInsets.only(
                right: 4.h,
                bottom: 25.v,
              ),
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
            ),
          ),
          SizedBox(
            height: 46.v,
            width: 382.h,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_my_vehicles".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_in_transit".tr,
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text(
                        "lbl_completed".tr,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 5.v,
                        width: 37.h,
                        margin: EdgeInsets.only(top: 4.v),
                      ),
                    ],
                  ),
                ),
              ],
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
