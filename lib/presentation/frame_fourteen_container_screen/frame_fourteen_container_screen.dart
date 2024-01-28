import 'bloc/frame_fourteen_container_bloc.dart';
import 'models/frame_fourteen_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_fourteen_page/frame_fourteen_page.dart';
import 'package:rofyt/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FrameFourteenContainerScreen extends StatelessWidget {
  FrameFourteenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourteenContainerBloc>(
        create: (context) => FrameFourteenContainerBloc(
            FrameFourteenContainerState(
                frameFourteenContainerModelObj: FrameFourteenContainerModel()))
          ..add(FrameFourteenContainerInitialEvent()),
        child: FrameFourteenContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameFourteenContainerBloc, FrameFourteenContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.frameFourteenPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: _buildBottomBarSection(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
