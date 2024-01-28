import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: Row(
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
                                            alignment: Alignment.topCenter,
                                            child: Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                userprofileItemModelObj
                                                    .carName!,
                                                style: CustomTextStyles
                                                    .bodyMediumRobotoBlack900,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Opacity(
                                              opacity: 0.5,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 9.h),
                                                child: Text(
                                                  userprofileItemModelObj
                                                      .carModel!,
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
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.v),
                                      child: Text(
                                        userprofileItemModelObj.hourlyRate!,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  userprofileItemModelObj.vehicleNumber!,
                                  style: CustomTextStyles.bodyMediumGray60013,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 92.h),
                  child: SizedBox(
                    height: 46.v,
                    child: VerticalDivider(
                      width: 4.h,
                      thickness: 4.v,
                      indent: 2.h,
                      endIndent: 28.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
                          userprofileItemModelObj.insuranceLabel!,
                          style: theme.textTheme.bodySmall,
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
                        userprofileItemModelObj.registrationLabel!,
                        style: theme.textTheme.bodySmall,
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
                        userprofileItemModelObj.supportLabel!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 37,
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
                            imagePath: ImageConstant.imgFileBlack900,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          userprofileItemModelObj.additionalLabel!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
