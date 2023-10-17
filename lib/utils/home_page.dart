import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

import '../theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: 'Complete Flutter Course',
            isCompleted: true,
            onChanged: null,
          ),
        ],
      ),
    );
  }
}
