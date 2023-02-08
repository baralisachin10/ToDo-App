import 'package:flutter/material.dart';
import 'package:todo_list/widgets/myButtons.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.red.shade200,
      content: SizedBox(
        height: 130,
        width: 400,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //text field for user input
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task!",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // save button
                MyButtons(text: "Save", onPressed: () {}),

                const SizedBox(
                  width: 10,
                ),
                //cancel button
                MyButtons(text: "Cancel", onPressed: (() {}))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
