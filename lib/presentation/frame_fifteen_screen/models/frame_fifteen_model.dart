// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'vehicledetailslist_item_model.dart';

/// This class defines the variables used in the [frame_fifteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameFifteenModel extends Equatable {
  FrameFifteenModel({this.vehicledetailslistItemList = const []}) {}

  List<VehicledetailslistItemModel> vehicledetailslistItemList;

  FrameFifteenModel copyWith(
      {List<VehicledetailslistItemModel>? vehicledetailslistItemList}) {
    return FrameFifteenModel(
      vehicledetailslistItemList:
          vehicledetailslistItemList ?? this.vehicledetailslistItemList,
    );
  }

  @override
  List<Object?> get props => [vehicledetailslistItemList];
}
