import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_application/bloc/counter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(),
          )
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CounterBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<CounterBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log("trigger");
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${state.value}',
              ),
              TextButton(
                child: const Text("Increment"),
                onPressed: () {
                  bloc.add(CounterIncrement());
                },
              )
            ],
          )),
        );
      },
    );
  }
}
