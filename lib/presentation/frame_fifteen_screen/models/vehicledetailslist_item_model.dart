import '../../../core/app_export.dart';

/// This class is used in the [vehicledetailslist_item_widget] screen.
class VehicledetailslistItemModel {
  VehicledetailslistItemModel({
    this.vehicleCounter,
    this.label,
    this.plateNumber,
    this.make,
    this.label1,
    this.type,
    this.insurance,
    this.registration,
    this.mot,
    this.file,
    this.additional,
    this.id,
  }) {
    vehicleCounter = vehicleCounter ?? "Vehicle 1";
    label = label ?? "Plate Number";
    plateNumber = plateNumber ?? "wb58ax1264";
    make = make ?? "Make: sandip";
    label1 = label1 ?? "|";
    type = type ?? "Type: ";
    insurance = insurance ?? "Insurance";
    registration = registration ?? "Registration";
    mot = mot ?? "MOT";
    file = file ?? ImageConstant.imgFileBlack900;
    additional = additional ?? "Additional";
    id = id ?? "";
  }

  String? vehicleCounter;

  String? label;

  String? plateNumber;

  String? make;

  String? label1;

  String? type;

  String? insurance;

  String? registration;

  String? mot;

  String? file;

  String? additional;

  String? id;
}
