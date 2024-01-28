import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rofyt/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray300012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: 109.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            frameItemModelObj.labelText1!,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 4.v),
          Text(
            frameItemModelObj.labelText2!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
