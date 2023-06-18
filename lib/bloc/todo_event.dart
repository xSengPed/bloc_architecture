part of 'todo_bloc.dart';

@immutable
abstract class TodoEvent {}

class Add extends TodoEvent {}

class Remove extends TodoEvent {}

class ChangeStatus extends TodoEvent {}
