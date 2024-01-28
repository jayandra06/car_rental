import '../frame_fifteen_screen/widgets/vehicledetailslist_item_widget.dart';
import 'bloc/frame_fifteen_bloc.dart';
import 'models/frame_fifteen_model.dart';
import 'models/vehicledetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_floating_button.dart';
import 'package:rofyt/widgets/custom_search_view.dart';

class FrameFifteenScreen extends StatelessWidget {
  const FrameFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFifteenBloc>(
      create: (context) => FrameFifteenBloc(FrameFifteenState(
        frameFifteenModelObj: FrameFifteenModel(),
      ))
        ..add(FrameFifteenInitialEvent()),
      child: FrameFifteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: 386.h,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTwentySevenColumn(context),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "lbl_vehicle_list".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallGray700,
                ),
              ),
              SizedBox(height: 2.v),
              _buildVehicleDetailsList(context),
              SizedBox(height: 39.v),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySevenColumn(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: 365.h,
        margin: EdgeInsets.only(left: 21.h),
        padding: EdgeInsets.symmetric(
          horizontal: 1.h,
          vertical: 22.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup95,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 44.v),
            Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: BlocSelector<FrameFifteenBloc, FrameFifteenState,
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleDetailsList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 23.h,
        ),
        child: BlocSelector<FrameFifteenBloc, FrameFifteenState,
            FrameFifteenModel?>(
          selector: (state) => state.frameFifteenModelObj,
          builder: (context, frameFifteenModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount:
                  frameFifteenModelObj?.vehicledetailslistItemList.length ?? 0,
              itemBuilder: (context, index) {
                VehicledetailslistItemModel model =
                    frameFifteenModelObj?.vehicledetailslistItemList[index] ??
                        VehicledetailslistItemModel();
                return VehicledetailslistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      backgroundColor: appTheme.gray100,
      child: CustomImageView(
        imagePath: ImageConstant.imgFileBlack900,
        height: 20.0.v,
        width: 20.0.h,
      ),
    );
  }
}
