// ignore_for_file: must_be_immutable

part of 'frame_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFourteenEvent extends Equatable {}

/// Event that is dispatched when the FrameFourteen widget is first created.
class FrameFourteenInitialEvent extends FrameFourteenEvent {
  @override
  List<Object?> get props => [];
}
