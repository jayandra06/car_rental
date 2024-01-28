// ignore_for_file: must_be_immutable

part of 'owner_rent_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OwnerRent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OwnerRentEvent extends Equatable {}

/// Event that is dispatched when the OwnerRent widget is first created.
class OwnerRentInitialEvent extends OwnerRentEvent {
  @override
  List<Object?> get props => [];
}
