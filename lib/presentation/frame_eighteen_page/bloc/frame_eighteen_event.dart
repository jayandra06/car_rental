// ignore_for_file: must_be_immutable

part of 'frame_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameEighteenEvent extends Equatable {}

/// Event that is dispatched when the FrameEighteen widget is first created.
class FrameEighteenInitialEvent extends FrameEighteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends FrameEighteenEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
