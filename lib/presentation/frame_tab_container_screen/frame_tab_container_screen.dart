import 'bloc/frame_tab_container_bloc.dart';
import 'models/frame_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/presentation/frame_page/frame_page.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/appbar_subtitle.dart';
import 'package:rofyt/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';
import 'package:rofyt/widgets/custom_search_view.dart';

class FrameTabContainerScreen extends StatefulWidget {
  const FrameTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameTabContainerScreenState createState() => FrameTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FrameTabContainerBloc>(
      create: (context) => FrameTabContainerBloc(FrameTabContainerState(
        frameTabContainerModelObj: FrameTabContainerModel(),
      ))
        ..add(FrameTabContainerInitialEvent()),
      child: FrameTabContainerScreen(),
    );
  }
}

class FrameTabContainerScreenState extends State<FrameTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 383.h,
          child: Column(
            children: [
              _buildMyRouteAppBar(context),
              SizedBox(
                height: 583.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    FramePage.builder(context),
                    FramePage.builder(context),
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
  }

  /// Section Widget
  Widget _buildMyRouteAppBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.h),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup29,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 373.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup29,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            CustomAppBar(
              height: 71.v,
              leadingWidth: 46.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowDown,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 41.v,
                ),
              ),
              centerTitle: true,
              title: AppbarSubtitle(
                text: "lbl_my_route".tr,
                margin: EdgeInsets.only(
                  top: 45.v,
                  bottom: 3.v,
                ),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgEdit,
                  margin: EdgeInsets.only(
                    left: 19.h,
                    right: 47.h,
                  ),
                ),
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgNotificationWhiteA700,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 66.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 10.h,
              ),
              child: BlocSelector<FrameTabContainerBloc, FrameTabContainerState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search".tr,
                  );
                },
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              height: 46.v,
              width: 373.h,
              child: TabBar(
                controller: tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.blueGray90001,
                labelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Abel',
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: theme.colorScheme.primary,
                unselectedLabelStyle: TextStyle(
                  fontSize: 14.fSize,
                  fontFamily: 'Abel',
                  fontWeight: FontWeight.w400,
                ),
                indicator: BoxDecoration(
                  color: appTheme.whiteA700,
                ),
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_schedule_route".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_complete_route".tr,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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
