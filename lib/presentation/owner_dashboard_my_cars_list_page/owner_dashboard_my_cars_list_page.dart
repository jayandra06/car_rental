import 'bloc/owner_dashboard_my_cars_list_bloc.dart';
import 'models/owner_dashboard_my_cars_list_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_icon_button.dart';
import 'package:rofyt/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class OwnerDashboardMyCarsListPage extends StatefulWidget {
  const OwnerDashboardMyCarsListPage({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardMyCarsListPageState createState() =>
      OwnerDashboardMyCarsListPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardMyCarsListBloc>(
      create: (context) =>
          OwnerDashboardMyCarsListBloc(OwnerDashboardMyCarsListState(
        ownerDashboardMyCarsListModelObj: OwnerDashboardMyCarsListModel(),
      ))
            ..add(OwnerDashboardMyCarsListInitialEvent()),
      child: OwnerDashboardMyCarsListPage(),
    );
  }
}

class OwnerDashboardMyCarsListPageState
    extends State<OwnerDashboardMyCarsListPage>
    with AutomaticKeepAliveClientMixin<OwnerDashboardMyCarsListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 383.h,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildPngClipartMar(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPngClipartMar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 9.h,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 47.v,
                        width: 245.h,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 169.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 28.v,
                                            width: 101.h,
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Opacity(
                                                    opacity: 0.5,
                                                    child: Text(
                                                      "lbl_maruti_suzuki"
                                                          .tr
                                                          .toUpperCase(),
                                                      style: CustomTextStyles
                                                          .bodyMediumRobotoBlack900,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Opacity(
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
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 5.v,
                                              bottom: 4.v,
                                            ),
                                            child: Text(
                                              "lbl_160_hr".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 2.v),
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
                      BlocSelector<OwnerDashboardMyCarsListBloc,
                          OwnerDashboardMyCarsListState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                            margin: EdgeInsets.only(
                              top: 10.v,
                              bottom: 12.v,
                            ),
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<OwnerDashboardMyCarsListBloc>()
                                  .add(ChangeSwitchEvent(value: value));
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildFrame(
                    context,
                    label: "lbl_insurance".tr,
                    label1: "lbl_registration".tr,
                    label2: "lbl_support".tr,
                    label3: "lbl_additional".tr,
                  ),
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            height: 150.v,
            width: 361.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      right: 15.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text(
                            "lbl_180_hr".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        BlocSelector<OwnerDashboardMyCarsListBloc,
                            OwnerDashboardMyCarsListState, bool?>(
                          selector: (state) => state.isSelectedSwitch1,
                          builder: (context, isSelectedSwitch1) {
                            return CustomSwitch(
                              margin: EdgeInsets.only(left: 52.h),
                              value: isSelectedSwitch1,
                              onChange: (value) {
                                context
                                    .read<OwnerDashboardMyCarsListBloc>()
                                    .add(ChangeSwitch1Event(value: value));
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 76.h,
                        top: 6.v,
                      ),
                      child: Text(
                        "lbl_maruti_suzuki".tr.toUpperCase(),
                        style: CustomTextStyles.bodyMediumRobotoBlack900,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 85.h,
                        top: 23.v,
                      ),
                      child: Text(
                        "lbl_swift_dzire_vdi".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallRobotoBlack90010_1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.h, 61.v, 10.h, 7.v),
                  child: _buildFrame(
                    context,
                    label: "lbl_insurance".tr,
                    label1: "lbl_registration".tr,
                    label2: "lbl_support".tr,
                    label3: "lbl_additional".tr,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(7.h),
                    decoration: AppDecoration.outlineBlack9001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPngTransparent,
                          height: 41.v,
                          width: 71.h,
                          margin: EdgeInsets.only(bottom: 93.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            top: 28.v,
                            bottom: 88.v,
                          ),
                          child: Text(
                            "msg_veh_no_ap_31".tr,
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String label,
    required String label1,
    required String label2,
    required String label3,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFile,
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  label,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray90001,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 29,
          ),
          Column(
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillOrange,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFileLime900,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                label1,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.blueGray90001,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 32,
          ),
          Column(
            children: [
              CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillGreen,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFileLightGreen800,
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                label2,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.blueGray90001,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 37,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGrayTL20,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFileBlack900,
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  label3,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray90001,
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
