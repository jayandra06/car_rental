import 'bloc/owner_dashboard_in_transit_bloc.dart';
import 'models/owner_dashboard_in_transit_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OwnerDashboardInTransitPage extends StatefulWidget {
  const OwnerDashboardInTransitPage({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerDashboardInTransitPageState createState() =>
      OwnerDashboardInTransitPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerDashboardInTransitBloc>(
      create: (context) =>
          OwnerDashboardInTransitBloc(OwnerDashboardInTransitState(
        ownerDashboardInTransitModelObj: OwnerDashboardInTransitModel(),
      ))
            ..add(OwnerDashboardInTransitInitialEvent()),
      child: OwnerDashboardInTransitPage(),
    );
  }
}

class OwnerDashboardInTransitPageState
    extends State<OwnerDashboardInTransitPage>
    with AutomaticKeepAliveClientMixin<OwnerDashboardInTransitPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerDashboardInTransitBloc,
        OwnerDashboardInTransitState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 383.h,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 49.h,
                      right: 43.h,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  height: 16.v,
                                  width: 31.h,
                                  margin: EdgeInsets.only(
                                    top: 48.v,
                                    bottom: 16.v,
                                  ),
                                ),
                                Container(
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  margin: EdgeInsets.only(left: 18.h),
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
