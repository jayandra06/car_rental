// ignore_for_file: must_be_immutable

part of 'frame_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFourEvent extends Equatable {}

/// Event that is dispatched when the FrameFour widget is first created.
class FrameFourInitialEvent extends FrameFourEvent {
  @override
  List<Object?> get props => [];
}
