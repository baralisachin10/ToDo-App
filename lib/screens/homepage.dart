import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todotile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ["My Tutorial", false],
    ["Do Exercise", true]
  ];

  // change the text box on user change
  void changeTaskCompleted(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          title: const Text('TO DO'),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
                taskName: todoList[index][0],
                taskCompleted: todoList[index][1],
                onChanged: ((value) {
                  return changeTaskCompleted(value, index);
                }));
          },
        ));
  }
}
