part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {
  CounterIncrement();
}
