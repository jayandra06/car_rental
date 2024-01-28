// ignore_for_file: must_be_immutable

part of 'frame_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameFiveEvent extends Equatable {}

/// Event that is dispatched when the FrameFive widget is first created.
class FrameFiveInitialEvent extends FrameFiveEvent {
  @override
  List<Object?> get props => [];
}
