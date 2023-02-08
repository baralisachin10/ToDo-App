import 'package:flutter/material.dart';
import 'package:todo_list/widgets/todotile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        title: Text('TO DO'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TodoTile(
            taskName: "My Tutorial",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          TodoTile(
            taskName: "WorkOut",
            taskCompleted: false,
            onChanged: (p0) {},
          )
        ],
      ),
    );
  }
}
