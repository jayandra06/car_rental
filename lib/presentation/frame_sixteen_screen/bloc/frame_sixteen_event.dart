// ignore_for_file: must_be_immutable

part of 'frame_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameSixteenEvent extends Equatable {}

/// Event that is dispatched when the FrameSixteen widget is first created.
class FrameSixteenInitialEvent extends FrameSixteenEvent {
  @override
  List<Object?> get props => [];
}
