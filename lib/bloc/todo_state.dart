part of 'todo_bloc.dart';

@immutable
abstract class TodoState {
  final List<Todo> todos = [];
}

class TodoInitial extends TodoState {}

class TodoFinal extends TodoState {
  final Todo _todo;

  TodoFinal(this._todo);

  Todo get todo => _todo;
}
