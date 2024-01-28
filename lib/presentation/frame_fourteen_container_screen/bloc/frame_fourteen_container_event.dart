// ignore_for_file: must_be_immutable

part of 'frame_fourteen_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFourteenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFourteenContainerEvent extends Equatable {}

/// Event that is dispatched when the FrameFourteenContainer widget is first created.
class FrameFourteenContainerInitialEvent extends FrameFourteenContainerEvent {
  @override
  List<Object?> get props => [];
}
