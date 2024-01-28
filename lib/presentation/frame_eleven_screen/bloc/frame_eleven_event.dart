// ignore_for_file: must_be_immutable

part of 'frame_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameElevenEvent extends Equatable {}

/// Event that is dispatched when the FrameEleven widget is first created.
class FrameElevenInitialEvent extends FrameElevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FrameElevenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends FrameElevenEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends FrameElevenEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
