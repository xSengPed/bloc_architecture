part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int get value => 0;
}

class CounterInitial extends CounterState {}

class CounterLoading extends CounterState {}

class CounterFinal extends CounterState {
  final int _value;

  CounterFinal(this._value);

  @override
  int get value => _value;
}
