import 'package:fd_workshop_app/models/todo_controller.dart';
import 'package:fd_workshop_app/widgets/todo_item_card.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class AddToDoItemCard extends StatefulWidget {
  TextEditingController textController;
  TodoController todoController;
  AddToDoItemCard(
      {Key? key, required this.textController, required this.todoController})
      : super(key: key);

  @override
  State<AddToDoItemCard> createState() => _AddToDoItemCardState();
}

class _AddToDoItemCardState extends State<AddToDoItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 8.0,
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          leading: Icon(
            Icons.menu,
            color: kThemeSecondaryColor.withOpacity(0.5),
          ),
          title: TextField(
            controller: widget.textController,
            cursorColor: kThemePrimaryColor,
            onSubmitted: (text) {
              widget.todoController.addToDo(text);
              setState(() {});
              widget.textController.clear();
            },
            decoration: InputDecoration.collapsed(
              hintText: 'add a new task',
              hintStyle: kAddToDoItemText,
              border: InputBorder.none,
            ),
            style: kCompleteListItemText,
          ),
          trailing: Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.add,
              size: 28,
              color: kThemePrimaryColor.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
