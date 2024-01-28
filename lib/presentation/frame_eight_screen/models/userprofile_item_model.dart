import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.carName,
    this.carModel,
    this.hourlyRate,
    this.vehicleNumber,
    this.insuranceLabel,
    this.registrationLabel,
    this.supportLabel,
    this.additionalLabel,
    this.id,
  }) {
    carName = carName ?? "MARUTI sUZUKI";
    carModel = carModel ?? "sWIFT vDI";
    hourlyRate = hourlyRate ?? "₹160/hr";
    vehicleNumber = vehicleNumber ?? "Veh.No :   WB 21 DV 1264";
    insuranceLabel = insuranceLabel ?? "Insurance";
    registrationLabel = registrationLabel ?? "Registration";
    supportLabel = supportLabel ?? "Support";
    additionalLabel = additionalLabel ?? "Additional";
    id = id ?? "";
  }

  String? carName;

  String? carModel;

  String? hourlyRate;

  String? vehicleNumber;

  String? insuranceLabel;

  String? registrationLabel;

  String? supportLabel;

  String? additionalLabel;

  String? id;
}
