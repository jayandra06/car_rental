import 'bloc/owner_rent_bloc.dart';
import 'models/owner_rent_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

class OwnerRentScreen extends StatelessWidget {
  const OwnerRentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OwnerRentBloc>(
      create: (context) => OwnerRentBloc(OwnerRentState(
        ownerRentModelObj: OwnerRentModel(),
      ))
        ..add(OwnerRentInitialEvent()),
      child: OwnerRentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OwnerRentBloc, OwnerRentState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.amber500.withOpacity(0.08),
            body: SizedBox(
              width: 428.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 62,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 46.v,
                    width: 47.h,
                    margin: EdgeInsets.only(left: 130.h),
                  ),
                  Spacer(
                    flex: 37,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2,
                    height: 314.v,
                    width: 427.h,
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
