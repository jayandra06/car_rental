// ignore_for_file: must_be_immutable

part of 'frame_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwoEvent extends Equatable {}

/// Event that is dispatched when the FrameTwo widget is first created.
class FrameTwoInitialEvent extends FrameTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FrameTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends FrameTwoEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends FrameTwoEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
