// ignore_for_file: must_be_immutable

part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int count = 0;
}

class CounterInitial extends CounterState {}

class CounterSuccess extends CounterState {
  final int _count;
  CounterSuccess(this._count);

  @override
  int get count => _count;
}

class CounterError extends CounterState {
  final String message;
  CounterError(this.message);
  @override
  String toString() {
    return message;
  }
}

class CounterLoading extends CounterState {}

class CounterLoadingComplete extends CounterState {}
