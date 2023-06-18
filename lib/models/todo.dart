class Todo {
  late String createdAt;
  late String title;
  late bool isDone;

  Todo(this.title, {this.isDone = false}) {
    createdAt = DateTime.now().toIso8601String();
  }
}
