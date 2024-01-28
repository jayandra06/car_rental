// ignore_for_file: must_be_immutable

part of 'frame_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameEightEvent extends Equatable {}

/// Event that is dispatched when the FrameEight widget is first created.
class FrameEightInitialEvent extends FrameEightEvent {
  @override
  List<Object?> get props => [];
}
