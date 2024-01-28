// ignore_for_file: must_be_immutable

part of 'frame_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTabContainerEvent extends Equatable {}

/// Event that is dispatched when the FrameTabContainer widget is first created.
class FrameTabContainerInitialEvent extends FrameTabContainerEvent {
  @override
  List<Object?> get props => [];
}
