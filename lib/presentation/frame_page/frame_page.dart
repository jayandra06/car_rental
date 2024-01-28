import 'bloc/frame_bloc.dart';
import 'models/frame_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FramePage extends StatefulWidget {
  const FramePage({Key? key})
      : super(
          key: key,
        );

  @override
  FramePageState createState() => FramePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<FrameBloc>(
      create: (context) => FrameBloc(FrameState(
        frameModelObj: FrameModel(),
      ))
        ..add(FrameInitialEvent()),
      child: FramePage(),
    );
  }
}

class FramePageState extends State<FramePage>
    with AutomaticKeepAliveClientMixin<FramePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FrameBloc, FrameState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 383.h,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_routes".tr.toUpperCase(),
                            style: CustomTextStyles.bodySmallGray700,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildTicketSection(context),
                        SizedBox(height: 3.v),
                        _buildCompletedSection(context),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle48,
                          height: 144.v,
                          width: 357.h,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
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
  Widget _buildTicketSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 20.h,
      ),
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTicket,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 22.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_monday_22nd_04_25".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_24_05_2023_08_00".tr,
                        style: CustomTextStyles.bodySmallGray600,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightSecondarycontainer,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 22.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 58.h,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 26.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_stops".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_100".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  width: 41.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_duration".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_05h_30m".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  width: 40.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_distance".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_250mi".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  width: 34.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_assign_sandiip".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
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

  /// Section Widget
  Widget _buildCompletedSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 22.h),
          child: _buildDateRangeSection(
            context,
            durationText: "msg_monday_22nd_04_25".tr,
            dateRangeText: "msg_20_05_2023_22_05_2023".tr,
            stopsLabel: "lbl_stops_100".tr,
            label: "lbl".tr,
            durationLabel: "msg_duration_05h_30m".tr,
            label1: "lbl".tr,
            distanceLabel: "lbl_distance_250mi".tr,
            completedLabel: "lbl_completed".tr,
          ),
        ),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(right: 22.h),
          child: _buildDateRangeSection(
            context,
            durationText: "msg_monday_22nd_04_25".tr,
            dateRangeText: "msg_20_05_2023_22_05_2023".tr,
            stopsLabel: "lbl_stops_100".tr,
            label: "lbl".tr,
            durationLabel: "msg_duration_05h_30m".tr,
            label1: "lbl".tr,
            distanceLabel: "lbl_distance_250mi".tr,
            completedLabel: "lbl_completed".tr,
          ),
        ),
        SizedBox(height: 8.v),
        Padding(
          padding: EdgeInsets.only(right: 22.h),
          child: _buildDateRangeSection(
            context,
            durationText: "msg_monday_22nd_04_25".tr,
            dateRangeText: "msg_20_05_2023_22_05_2023".tr,
            stopsLabel: "lbl_stops_100".tr,
            label: "lbl".tr,
            durationLabel: "msg_duration_05h_30m".tr,
            label1: "lbl".tr,
            distanceLabel: "lbl_distance_250mi".tr,
            completedLabel: "lbl_completed".tr,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildDateRangeSection(
    BuildContext context, {
    required String durationText,
    required String dateRangeText,
    required String stopsLabel,
    required String label,
    required String durationLabel,
    required String label1,
    required String distanceLabel,
    required String completedLabel,
  }) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTicket,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    durationText,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightSecondarycontainer,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: Text(
                dateRangeText,
                style: CustomTextStyles.bodySmallGray600.copyWith(
                  color: appTheme.gray600,
                ),
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 26.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_stops".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_100".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    label,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
                Container(
                  width: 41.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_duration".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_05h_30m".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    top: 9.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    label1,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
                Container(
                  width: 40.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_distance".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                        TextSpan(
                          text: "lbl_250mi".tr,
                          style: CustomTextStyles.bodySmallff333333,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    completedLabel,
                    style: CustomTextStyles.bodySmallPrimary.copyWith(
                      color: theme.colorScheme.primary,
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
}
