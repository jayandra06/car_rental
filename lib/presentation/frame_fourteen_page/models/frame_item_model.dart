import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.labelText1,
    this.labelText2,
    this.id,
  }) {
    labelText1 = labelText1 ?? "100";
    labelText2 = labelText2 ?? "Complete Trips";
    id = id ?? "";
  }

  String? labelText1;

  String? labelText2;

  String? id;
}
