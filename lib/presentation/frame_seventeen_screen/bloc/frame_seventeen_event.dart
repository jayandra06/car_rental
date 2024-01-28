// ignore_for_file: must_be_immutable

part of 'frame_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameSeventeenEvent extends Equatable {}

/// Event that is dispatched when the FrameSeventeen widget is first created.
class FrameSeventeenInitialEvent extends FrameSeventeenEvent {
  @override
  List<Object?> get props => [];
}
