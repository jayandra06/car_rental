// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [frame_fourteen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameFourteenModel extends Equatable {
  FrameFourteenModel({this.frameItemList = const []}) {}

  List<FrameItemModel> frameItemList;

  FrameFourteenModel copyWith({List<FrameItemModel>? frameItemList}) {
    return FrameFourteenModel(
      frameItemList: frameItemList ?? this.frameItemList,
    );
  }

  @override
  List<Object?> get props => [frameItemList];
}
