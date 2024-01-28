// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [frame_twenty_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameTwentyModel extends Equatable {
  FrameTwentyModel({this.radioList = const []}) {}

  List<String> radioList;

  FrameTwentyModel copyWith({List<String>? radioList}) {
    return FrameTwentyModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
