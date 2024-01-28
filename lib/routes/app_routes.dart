import 'package:flutter/material.dart';
import 'package:rofyt/presentation/frame_four_screen/frame_four_screen.dart';
import 'package:rofyt/presentation/frame_fifteen_screen/frame_fifteen_screen.dart';
import 'package:rofyt/presentation/frame_tab_container_screen/frame_tab_container_screen.dart';
import 'package:rofyt/presentation/frame_five_screen/frame_five_screen.dart';
import 'package:rofyt/presentation/frame_three_screen/frame_three_screen.dart';
import 'package:rofyt/presentation/frame_thirteen_screen/frame_thirteen_screen.dart';
import 'package:rofyt/presentation/frame_eleven_screen/frame_eleven_screen.dart';
import 'package:rofyt/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:rofyt/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:rofyt/presentation/frame_seven_screen/frame_seven_screen.dart';
import 'package:rofyt/presentation/frame_eighteen_tab_container_screen/frame_eighteen_tab_container_screen.dart';
import 'package:rofyt/presentation/frame_sixteen_screen/frame_sixteen_screen.dart';
import 'package:rofyt/presentation/frame_fourteen_container_screen/frame_fourteen_container_screen.dart';
import 'package:rofyt/presentation/owner_dashboard_screen/owner_dashboard_screen.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_one_tab_container_screen/owner_dashboard_in_transit_one_tab_container_screen.dart';
import 'package:rofyt/presentation/owner_dashboard_in_transit_tab_container_screen/owner_dashboard_in_transit_tab_container_screen.dart';
import 'package:rofyt/presentation/frame_eight_screen/frame_eight_screen.dart';
import 'package:rofyt/presentation/frame_six_screen/frame_six_screen.dart';
import 'package:rofyt/presentation/frame_twelve_screen/frame_twelve_screen.dart';
import 'package:rofyt/presentation/owner_dashboard_my_cars_list_tab_container_screen/owner_dashboard_my_cars_list_tab_container_screen.dart';
import 'package:rofyt/presentation/owner_rent_screen/owner_rent_screen.dart';
import 'package:rofyt/presentation/car_owner_app_screen/car_owner_app_screen.dart';
import 'package:rofyt/presentation/frame_ten_screen/frame_ten_screen.dart';
import 'package:rofyt/presentation/frame_nineteen_screen/frame_nineteen_screen.dart';
import 'package:rofyt/presentation/frame_seventeen_screen/frame_seventeen_screen.dart';
import 'package:rofyt/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String frameFourScreen = '/frame_four_screen';

  static const String frameFifteenScreen = '/frame_fifteen_screen';

  static const String framePage = '/frame_page';

  static const String frameTabContainerScreen = '/frame_tab_container_screen';

  static const String frameFiveScreen = '/frame_five_screen';

  static const String frameThreeScreen = '/frame_three_screen';

  static const String frameThirteenScreen = '/frame_thirteen_screen';

  static const String frameElevenScreen = '/frame_eleven_screen';

  static const String frameOneScreen = '/frame_one_screen';

  static const String frameTwoScreen = '/frame_two_screen';

  static const String frameSevenScreen = '/frame_seven_screen';

  static const String frameEighteenPage = '/frame_eighteen_page';

  static const String frameEighteenTabContainerScreen =
      '/frame_eighteen_tab_container_screen';

  static const String frameSixteenScreen = '/frame_sixteen_screen';

  static const String frameFourteenPage = '/frame_fourteen_page';

  static const String frameFourteenContainerScreen =
      '/frame_fourteen_container_screen';

  static const String ownerDashboardScreen = '/owner_dashboard_screen';

  static const String ownerDashboardInTransitOnePage =
      '/owner_dashboard_in_transit_one_page';

  static const String ownerDashboardInTransitOneTabContainerScreen =
      '/owner_dashboard_in_transit_one_tab_container_screen';

  static const String ownerDashboardInTransitPage =
      '/owner_dashboard_in_transit_page';

  static const String ownerDashboardInTransitTabContainerScreen =
      '/owner_dashboard_in_transit_tab_container_screen';

  static const String frameEightScreen = '/frame_eight_screen';

  static const String frameSixScreen = '/frame_six_screen';

  static const String frameTwelveScreen = '/frame_twelve_screen';

  static const String ownerDashboardMyCarsListPage =
      '/owner_dashboard_my_cars_list_page';

  static const String ownerDashboardMyCarsListTabContainerScreen =
      '/owner_dashboard_my_cars_list_tab_container_screen';

  static const String ownerRentScreen = '/owner_rent_screen';

  static const String carOwnerAppScreen = '/car_owner_app_screen';

  static const String frameTenScreen = '/frame_ten_screen';

  static const String frameNineteenScreen = '/frame_nineteen_screen';

  static const String frameSeventeenScreen = '/frame_seventeen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        frameFourScreen: FrameFourScreen.builder,
        frameFifteenScreen: FrameFifteenScreen.builder,
        frameTabContainerScreen: FrameTabContainerScreen.builder,
        frameFiveScreen: FrameFiveScreen.builder,
        frameThreeScreen: FrameThreeScreen.builder,
        frameThirteenScreen: FrameThirteenScreen.builder,
        frameElevenScreen: FrameElevenScreen.builder,
        frameOneScreen: FrameOneScreen.builder,
        frameTwoScreen: FrameTwoScreen.builder,
        frameSevenScreen: FrameSevenScreen.builder,
        frameEighteenTabContainerScreen:
            FrameEighteenTabContainerScreen.builder,
        frameSixteenScreen: FrameSixteenScreen.builder,
        frameFourteenContainerScreen: FrameFourteenContainerScreen.builder,
        ownerDashboardScreen: OwnerDashboardScreen.builder,
        ownerDashboardInTransitOneTabContainerScreen:
            OwnerDashboardInTransitOneTabContainerScreen.builder,
        ownerDashboardInTransitTabContainerScreen:
            OwnerDashboardInTransitTabContainerScreen.builder,
        frameEightScreen: FrameEightScreen.builder,
        frameSixScreen: FrameSixScreen.builder,
        frameTwelveScreen: FrameTwelveScreen.builder,
        ownerDashboardMyCarsListTabContainerScreen:
            OwnerDashboardMyCarsListTabContainerScreen.builder,
        ownerRentScreen: OwnerRentScreen.builder,
        carOwnerAppScreen: CarOwnerAppScreen.builder,
        frameTenScreen: FrameTenScreen.builder,
        frameNineteenScreen: FrameNineteenScreen.builder,
        frameSeventeenScreen: FrameSeventeenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: FrameFourScreen.builder
      };
}
