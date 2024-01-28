// ignore_for_file: must_be_immutable

part of 'frame_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameOneEvent extends Equatable {}

/// Event that is dispatched when the FrameOne widget is first created.
class FrameOneInitialEvent extends FrameOneEvent {
  @override
  List<Object?> get props => [];
}
