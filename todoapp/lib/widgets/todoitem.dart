import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItems;

  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: tdBlck, 
        borderRadius: BorderRadius.circular(12), 
      ),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: tdBlck, 
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdRed, 
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdbeige, 
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: tdRed, 
            borderRadius: BorderRadius.circular(8), 
          ),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.delete, color: Colors.white),
              iconSize: 20,
              onPressed: () {
                onDeleteItems(todo.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}
