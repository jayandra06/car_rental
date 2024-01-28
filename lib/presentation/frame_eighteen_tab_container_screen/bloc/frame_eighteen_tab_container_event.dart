// ignore_for_file: must_be_immutable

part of 'frame_eighteen_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameEighteenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameEighteenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the FrameEighteenTabContainer widget is first created.
class FrameEighteenTabContainerInitialEvent
    extends FrameEighteenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
