import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ToDoItemCard extends StatefulWidget {
  final String toDoText;
  final bool state;
  const ToDoItemCard({Key? key, required this.toDoText, required this.state})
      : super(key: key);

  @override
  State<ToDoItemCard> createState() => _ToDoItemCardState();
}

class _ToDoItemCardState extends State<ToDoItemCard> {
  int? _status = 1;

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
          leading: const Icon(
            Icons.menu,
            color: kThemeSecondaryColor,
          ),
          title: Text(
            widget.toDoText,
            style: widget.state ? kCompleteListItemText : kToDoListItemText,
          ),
          trailing: Radio(
            toggleable: true,
            value: widget.state ? 1 : 0,
            groupValue: _status,
            activeColor: kThemeSecondaryColor,
            onChanged: (int? value) {
              setState(() {
                _status = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
