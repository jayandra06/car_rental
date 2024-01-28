import '../../../core/app_export.dart';

/// This class is used in the [vehicleinfoinsurancecertificate_item_widget] screen.
class VehicleinfoinsurancecertificateItemModel {
  VehicleinfoinsurancecertificateItemModel({
    this.insuranceCertificateText,
    this.id,
  }) {
    insuranceCertificateText =
        insuranceCertificateText ?? "Insurance Certificate";
    id = id ?? "";
  }

  String? insuranceCertificateText;

  String? id;
}
