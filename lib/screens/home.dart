import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_application/bloc/counter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterBloc, CounterState>(
        listener: (context, state) {
          // TODO: implement listener
          log(state.toString());
        },
        builder: (context, state) {
          if (state is CounterLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${state.count}',
                    style: TextStyle(fontSize: 24),
                  ),
                  TextButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(CounterIncrement());
                      },
                      child: const Text("Add")),
                  TextButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(CounterDecrement());
                      },
                      child: const Text("Substract")),
                  TextButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(CounteSetLoading());
                      },
                      child: const Text("Loading")),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
