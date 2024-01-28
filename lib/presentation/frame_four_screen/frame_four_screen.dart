import '../frame_four_screen/widgets/vehicleinfoinsurancecertificate_item_widget.dart';
import 'bloc/frame_four_bloc.dart';
import 'models/frame_four_model.dart';
import 'models/vehicleinfoinsurancecertificate_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';
import 'package:rofyt/widgets/app_bar/appbar_leading_image.dart';
import 'package:rofyt/widgets/app_bar/custom_app_bar.dart';
import 'package:rofyt/widgets/custom_outlined_button.dart';
import 'package:rofyt/widgets/custom_text_form_field.dart';

class FrameFourScreen extends StatelessWidget {
  const FrameFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameFourBloc>(
      create: (context) => FrameFourBloc(FrameFourState(
        frameFourModelObj: FrameFourModel(),
      ))
        ..add(FrameFourInitialEvent()),
      child: FrameFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 386.h,
          child: Column(
            children: [
              _buildTitleStack(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 26.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_vehicle_info".tr,
                      style: CustomTextStyles.bodyLarge18,
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_vehicle_make".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    SizedBox(height: 3.v),
                    _buildVehicleInfoEmail(context),
                    SizedBox(height: 13.v),
                    Text(
                      "lbl_vehicle_type".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    SizedBox(height: 2.v),
                    _buildVehicleInfoPassword(context),
                    SizedBox(height: 12.v),
                    Text(
                      "msg_vehicle_plate_number".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    SizedBox(height: 3.v),
                    _buildVehicleInfoPassword1(context),
                    SizedBox(height: 25.v),
                    Text(
                      "msg_upload_certificate".tr,
                      style: CustomTextStyles.bodyLarge18,
                    ),
                    SizedBox(height: 14.v),
                    _buildVehicleInfoInsuranceCertificate(context),
                    SizedBox(height: 18.v),
                    _buildFrameFourAddMoreVehicle(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitleStack(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 385.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 385.h,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 12.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup95,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      top: 56.v,
                    ),
                    child: Text(
                      "lbl_add_new_vehicle".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 66.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_save".tr,
                      style: CustomTextStyles.bodyMediumLightblue600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 34.v,
            leadingWidth: 386.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
              margin: EdgeInsets.only(
                left: 21.h,
                right: 335.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVehicleInfoEmail(BuildContext context) {
    return BlocSelector<FrameFourBloc, FrameFourState, TextEditingController?>(
      selector: (state) => state.vehicleInfoEmailController,
      builder: (context, vehicleInfoEmailController) {
        return CustomTextFormField(
          controller: vehicleInfoEmailController,
          hintText: "lbl_jack".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVehicleInfoPassword(BuildContext context) {
    return BlocSelector<FrameFourBloc, FrameFourState, TextEditingController?>(
      selector: (state) => state.vehicleInfoPasswordController,
      builder: (context, vehicleInfoPasswordController) {
        return CustomTextFormField(
          controller: vehicleInfoPasswordController,
          hintText: "lbl_austin".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVehicleInfoPassword1(BuildContext context) {
    return BlocSelector<FrameFourBloc, FrameFourState, TextEditingController?>(
      selector: (state) => state.vehicleInfoPasswordController1,
      builder: (context, vehicleInfoPasswordController1) {
        return CustomTextFormField(
          controller: vehicleInfoPasswordController1,
          hintText: "lbl_8df2g811".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVehicleInfoInsuranceCertificate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: BlocSelector<FrameFourBloc, FrameFourState, FrameFourModel?>(
        selector: (state) => state.frameFourModelObj,
        builder: (context, frameFourModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount: frameFourModelObj
                    ?.vehicleinfoinsurancecertificateItemList.length ??
                0,
            itemBuilder: (context, index) {
              VehicleinfoinsurancecertificateItemModel model = frameFourModelObj
                      ?.vehicleinfoinsurancecertificateItemList[index] ??
                  VehicleinfoinsurancecertificateItemModel();
              return VehicleinfoinsurancecertificateItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFourAddMoreVehicle(BuildContext context) {
    return CustomOutlinedButton(
      width: 110.h,
      text: "msg_add_more_vehicle".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgPlus,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}
