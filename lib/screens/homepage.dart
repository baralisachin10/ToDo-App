import 'package:flutter/material.dart';
import 'package:todo_list/widgets/dialogBox.dart';
import 'package:todo_list/widgets/todotile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // text controller
  final _textController = TextEditingController();

  // list of task
  final List _todoList = [];

  // function to save the input todo from user

  void saveNewTask() {
    setState(() {
      _todoList.add([_textController.text, false]);
      _textController.clear();
    });
    Navigator.of(context).pop();
  }

  // change the text box on user change
  void changeTaskCompleted(bool? value, int index) {
    setState(() {
      _todoList[index][1] = !_todoList[index][1];
    });
  }

  //createNewTask
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _textController,
            onCancel: () {
              Navigator.of(context).pop();
            },
            onSave: saveNewTask,
          );
        });
  }

  // to delete the existing task
  void deleteTask(int index) {
    setState(() {
      _todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade100,
        appBar: AppBar(
          title: Text(
            'TO DO',
            style: GoogleFonts.lato(),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: const Icon(Icons.add),
        ),
        body: _todoList.isEmpty
            ? Center(
                child: Text(
                'ADD YOUR TASK',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ))
            : ListView.builder(
                itemCount: _todoList.length,
                itemBuilder: (context, index) {
                  return TodoTile(
                      taskName: _todoList[index][0],
                      taskCompleted: _todoList[index][1],
                      deleteTask: (context) => deleteTask(index),
                      onChanged: ((value) {
                        return changeTaskCompleted(value, index);
                      }));
                },
              ));
  }
}
