// ignore_for_file: must_be_immutable

part of 'frame_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameTwelveEvent extends Equatable {}

/// Event that is dispatched when the FrameTwelve widget is first created.
class FrameTwelveInitialEvent extends FrameTwelveEvent {
  @override
  List<Object?> get props => [];
}
