import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<CounterIncrement>((event, emit) {
      emit(CounterSuccess(state.count + 1));
    });

    on<CounterDecrement>((event, emit) {
      if (state.count <= 0) {
        emit(CounterError("Count must more than 0"));
      } else {
        emit(CounterSuccess(state.count - 1));
      }
    });

    on<CounteSetLoading>((event, emit) async {
      log('test');
      emit(CounterLoading());
      await Future.delayed(const Duration(seconds: 3));
      emit(CounterLoadingComplete());
    });
  }
}
