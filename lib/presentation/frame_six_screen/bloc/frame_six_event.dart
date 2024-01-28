// ignore_for_file: must_be_immutable

part of 'frame_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameSixEvent extends Equatable {}

/// Event that is dispatched when the FrameSix widget is first created.
class FrameSixInitialEvent extends FrameSixEvent {
  @override
  List<Object?> get props => [];
}
