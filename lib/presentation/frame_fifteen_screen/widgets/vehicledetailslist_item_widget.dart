import '../models/vehicledetailslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class VehicledetailslistItemWidget extends StatelessWidget {
  VehicledetailslistItemWidget(
    this.vehicledetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VehicledetailslistItemModel vehicledetailslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIconButton(
                    height: 54.adaptSize,
                    width: 54.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTruck,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 35.v),
                    child: Text(
                      vehicledetailslistItemModelObj.vehicleCounter!,
                      style: CustomTextStyles.bodyMediumGray600,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotification,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      bottom: 34.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                vehicledetailslistItemModelObj.label!,
                style: CustomTextStyles.bodyMediumGray600,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                vehicledetailslistItemModelObj.plateNumber!,
                style: CustomTextStyles.headlineSmall_1,
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Row(
                children: [
                  Text(
                    vehicledetailslistItemModelObj.make!,
                    style: theme.textTheme.bodyMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      vehicledetailslistItemModelObj.label1!,
                      style: CustomTextStyles.bodySmallGray600,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      vehicledetailslistItemModelObj.type!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
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
                          vehicledetailslistItemModelObj.insurance!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Column(
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
                        SizedBox(height: 8.v),
                        Text(
                          vehicledetailslistItemModelObj.registration!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 46,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
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
                        SizedBox(height: 7.v),
                        Text(
                          vehicledetailslistItemModelObj.mot!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 53,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Column(
                      children: [
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillGrayTL20,
                          child: CustomImageView(
                            imagePath: vehicledetailslistItemModelObj?.file,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          vehicledetailslistItemModelObj.additional!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
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
}
