import 'package:fd_workshop_app/models/todo_controller.dart';
import 'package:fd_workshop_app/widgets/add_todo_item_card.dart';
import 'package:fd_workshop_app/widgets/todo_item_card.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ToDoScreen extends StatefulWidget {
  TodoController todoController;

  ToDoScreen({Key? key, required this.todoController}) : super(key: key);

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeOffWhiteColor,
      body: LayoutBuilder(
        builder: ((context, constraints) => ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'tasker',
                        style: kToDoLogoText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.settings,
                            color: kThemePrimaryColor,
                            size: 26,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Icon(
                              Icons.notifications,
                              color: kThemePrimaryColor,
                              size: 26,
                            ),
                          ),
                          Icon(
                            Icons.account_circle_outlined,
                            color: kThemePrimaryColor,
                            size: 26,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Today',
                            style: kToDoTodayText,
                          ),
                          for (String item
                              in widget.todoController.incompleteItems)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: ToDoItemCard(
                                state: false,
                                toDoText: item,
                              ),
                            ),
                          AddToDoItemCard(
                            textController: myController,
                            todoController: widget.todoController,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Completed',
                            style: kToDoTodayText,
                          ),
                          for (String item
                              in widget.todoController.completeItems)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: ToDoItemCard(
                                state: true,
                                toDoText: item,
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
