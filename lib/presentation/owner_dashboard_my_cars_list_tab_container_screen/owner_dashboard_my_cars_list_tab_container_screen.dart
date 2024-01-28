import 'bloc/owner_dashboard_my_cars_list_tab_container_bloc.dart';
import 'models/owner_dashboard_my_cars_list_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/presentation/owner_dashboard_my_cars_list_page/owner_dashboard_my_cars_list_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

class OwnerDashboardMyCarsListTabContainerScreen extends StatefulWidget {
  const OwnerDashboardMyCarsListTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardMyCarsListTabContainerScreenState createState() =>
      OwnerDashboardMyCarsListTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardMyCarsListTabContainerBloc>(
      create: (context) => OwnerDashboardMyCarsListTabContainerBloc(
          OwnerDashboardMyCarsListTabContainerState(
        ownerDashboardMyCarsListTabContainerModelObj:
            OwnerDashboardMyCarsListTabContainerModel(),
      ))
        ..add(OwnerDashboardMyCarsListTabContainerInitialEvent()),
      child: OwnerDashboardMyCarsListTabContainerScreen(),
    );
  }
}

class OwnerDashboardMyCarsListTabContainerScreenState
    extends State<OwnerDashboardMyCarsListTabContainerScreen>
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
    return BlocBuilder<OwnerDashboardMyCarsListTabContainerBloc,
        OwnerDashboardMyCarsListTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  _buildAddNewCarTab(context),
                  SizedBox(
                    height: 469.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        OwnerDashboardMyCarsListPage.builder(context),
                        OwnerDashboardMyCarsListPage.builder(context),
                        OwnerDashboardMyCarsListPage.builder(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddNewCarTab(BuildContext context) {
    return SizedBox(
      height: 204.v,
      width: 382.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup95,
            height: 166.v,
            width: 382.h,
            alignment: Alignment.topCenter,
          ),
          CustomElevatedButton(
            height: 32.v,
            width: 175.h,
            text: "lbl_add_new_car".tr.toUpperCase(),
            margin: EdgeInsets.only(bottom: 50.v),
            buttonStyle: CustomButtonStyles.fillPrimaryTL16,
            buttonTextStyle: CustomTextStyles.bodySmallRobotoBlack900,
            alignment: Alignment.bottomCenter,
          ),
          SizedBox(
            height: 46.v,
            width: 381.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_my_vehicles".tr,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle,
                        height: 5.v,
                        width: 37.h,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 1.v,
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_in_transit".tr,
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
