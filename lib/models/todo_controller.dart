class TodoController {
  final List<String> completeTodoItems;
  final List<String> incompleteTodoItems;

  TodoController(this.completeTodoItems, this.incompleteTodoItems);

  List<String> get completeItems {
    return completeTodoItems;
  }

  List<String> get incompleteItems {
    return incompleteTodoItems;
  }

  void addToDo(value) {
    incompleteItems.add(value);
  }
}
