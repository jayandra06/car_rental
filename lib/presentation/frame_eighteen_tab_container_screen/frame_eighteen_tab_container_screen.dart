import 'bloc/frame_eighteen_tab_container_bloc.dart';
import 'models/frame_eighteen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/presentation/frame_eighteen_page/frame_eighteen_page.dart';

class FrameEighteenTabContainerScreen extends StatefulWidget {
  const FrameEighteenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameEighteenTabContainerScreenState createState() =>
      FrameEighteenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FrameEighteenTabContainerBloc>(
      create: (context) =>
          FrameEighteenTabContainerBloc(FrameEighteenTabContainerState(
        frameEighteenTabContainerModelObj: FrameEighteenTabContainerModel(),
      ))
            ..add(FrameEighteenTabContainerInitialEvent()),
      child: FrameEighteenTabContainerScreen(),
    );
  }
}

class FrameEighteenTabContainerScreenState
    extends State<FrameEighteenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameEighteenTabContainerBloc,
        FrameEighteenTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: 383.h,
              child: Column(
                children: [
                  SizedBox(height: 74.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "lbl_sign_in_with".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 605.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        FrameEighteenPage.builder(context),
                        FrameEighteenPage.builder(context),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 343.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Abel',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.blueGray90001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Abel',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          border: Border(
            bottom: BorderSide(
              color: theme.colorScheme.primary,
              width: 1.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_mobile_number".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_email".tr,
            ),
          ),
        ],
      ),
    );
  }
}
