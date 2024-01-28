import 'bloc/owner_dashboard_in_transit_one_tab_container_bloc.dart';
import 'models/owner_dashboard_in_transit_one_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_one_page/owner_dashboard_in_transit_one_page.dart';

class OwnerDashboardInTransitOneTabContainerScreen extends StatefulWidget {
  const OwnerDashboardInTransitOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardInTransitOneTabContainerScreenState createState() =>
      OwnerDashboardInTransitOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardInTransitOneTabContainerBloc>(
      create: (context) => OwnerDashboardInTransitOneTabContainerBloc(
          OwnerDashboardInTransitOneTabContainerState(
        ownerDashboardInTransitOneTabContainerModelObj:
            OwnerDashboardInTransitOneTabContainerModel(),
      ))
        ..add(OwnerDashboardInTransitOneTabContainerInitialEvent()),
      child: OwnerDashboardInTransitOneTabContainerScreen(),
    );
  }
}

class OwnerDashboardInTransitOneTabContainerScreenState
    extends State<OwnerDashboardInTransitOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerDashboardInTransitOneTabContainerBloc,
        OwnerDashboardInTransitOneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  _buildWelcomeSection(context),
                  SizedBox(
                    height: 567.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        OwnerDashboardInTransitOnePage.builder(context),
                        OwnerDashboardInTransitOnePage.builder(context),
                        OwnerDashboardInTransitOnePage.builder(context),
                      ],
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
  Widget _buildWelcomeSection(BuildContext context) {
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
                  child: Column(
                    children: [
                      Text(
                        "lbl_in_transit".tr,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 5.v,
                        width: 37.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(
                          top: 5.v,
                          right: 3.h,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_complete".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
