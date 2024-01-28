import 'bloc/owner_dashboard_in_transit_one_bloc.dart';
import 'models/owner_dashboard_in_transit_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OwnerDashboardInTransitOnePage extends StatefulWidget {
  const OwnerDashboardInTransitOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardInTransitOnePageState createState() =>
      OwnerDashboardInTransitOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardInTransitOneBloc>(
      create: (context) =>
          OwnerDashboardInTransitOneBloc(OwnerDashboardInTransitOneState(
        ownerDashboardInTransitOneModelObj: OwnerDashboardInTransitOneModel(),
      ))
            ..add(OwnerDashboardInTransitOneInitialEvent()),
      child: OwnerDashboardInTransitOnePage(),
    );
  }
}

class OwnerDashboardInTransitOnePageState
    extends State<OwnerDashboardInTransitOnePage>
    with AutomaticKeepAliveClientMixin<OwnerDashboardInTransitOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerDashboardInTransitOneBloc,
        OwnerDashboardInTransitOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 383.h,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 48.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50.h,
                      right: 42.h,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 58.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  height: 16.v,
                                  width: 31.h,
                                  margin: EdgeInsets.only(
                                    top: 43.v,
                                    bottom: 21.v,
                                  ),
                                ),
                                Container(
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  margin: EdgeInsets.only(left: 19.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 22.v,
                                  ),
                                  decoration: AppDecoration.fillBlack.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder40,
                                  ),
                                  child: Opacity(
                                    opacity: 0.78,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgFrameGray700,
                                      height: 34.v,
                                      width: 44.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Text(
                          "msg_you_haven_t_any2".tr,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 290.h,
                          child: Text(
                            "msg_your_request_is".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumGray700.copyWith(
                              height: 1.57,
                            ),
                          ),
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
}
