class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  // Use a static mutable list so it can be accessed and modified
  static List<ToDo> todoList = [];
}

