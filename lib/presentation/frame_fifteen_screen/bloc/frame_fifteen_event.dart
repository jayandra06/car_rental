// ignore_for_file: must_be_immutable

part of 'frame_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFifteenEvent extends Equatable {}

/// Event that is dispatched when the FrameFifteen widget is first created.
class FrameFifteenInitialEvent extends FrameFifteenEvent {
  @override
  List<Object?> get props => [];
}
