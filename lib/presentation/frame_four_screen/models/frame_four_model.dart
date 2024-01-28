// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'vehicleinfoinsurancecertificate_item_model.dart';

/// This class defines the variables used in the [frame_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameFourModel extends Equatable {
  FrameFourModel({this.vehicleinfoinsurancecertificateItemList = const []}) {}

  List<VehicleinfoinsurancecertificateItemModel>
      vehicleinfoinsurancecertificateItemList;

  FrameFourModel copyWith(
      {List<VehicleinfoinsurancecertificateItemModel>?
          vehicleinfoinsurancecertificateItemList}) {
    return FrameFourModel(
      vehicleinfoinsurancecertificateItemList:
          vehicleinfoinsurancecertificateItemList ??
              this.vehicleinfoinsurancecertificateItemList,
    );
  }

  @override
  List<Object?> get props => [vehicleinfoinsurancecertificateItemList];
}
