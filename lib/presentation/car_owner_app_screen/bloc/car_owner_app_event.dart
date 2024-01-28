// ignore_for_file: must_be_immutable

part of 'car_owner_app_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CarOwnerApp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CarOwnerAppEvent extends Equatable {}

/// Event that is dispatched when the CarOwnerApp widget is first created.
class CarOwnerAppInitialEvent extends CarOwnerAppEvent {
  @override
  List<Object?> get props => [];
}
