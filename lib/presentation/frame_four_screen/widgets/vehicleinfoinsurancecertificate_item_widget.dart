import '../models/vehicleinfoinsurancecertificate_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class VehicleinfoinsurancecertificateItemWidget extends StatelessWidget {
  VehicleinfoinsurancecertificateItemWidget(
    this.vehicleinfoinsurancecertificateItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VehicleinfoinsurancecertificateItemModel
      vehicleinfoinsurancecertificateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: DottedBorder(
        color: appTheme.gray30001,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(4),
        borderType: BorderType.RRect,
        dashPattern: [
          2,
          2,
        ],
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  left: 11.h,
                  top: 5.v,
                  bottom: 5.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 5.h,
                  top: 7.v,
                  bottom: 8.v,
                ),
                child: Text(
                  vehicleinfoinsurancecertificateItemModelObj
                      .insuranceCertificateText!,
                  style: CustomTextStyles.bodyMediumSecondaryContainer,
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                height: 34.v,
                width: 93.h,
                text: "lbl_upload".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 4.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowright,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
