import 'package:fd_workshop_app/models/todo_controller.dart';
import 'package:fd_workshop_app/screens/todo_screen.dart';
import 'package:fd_workshop_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigateToHomeScreen);
  }

  navigateToHomeScreen() {
    List<String> todoItems = [
      'take out the trash',
      'operating systems hw',
      'play video games',
    ];
    List<String> completedItems = [
      'do the laundry',
      'finish electronics hw',
      'wash dishes',
    ];

    TodoController controller = TodoController(completedItems, todoItems);

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ToDoScreen(todoController: controller)));
  }

  final String topRightVector = 'assets/images/top_right_vector.png';
  final String bottomLeftVector = 'assets/images/bottom_left_vector.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeOffWhiteColor,
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                topRightVector,
              ),
            ),
            Center(
              child: const Text(
                'tasker',
                style: kSplashLogoText,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                bottomLeftVector,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
