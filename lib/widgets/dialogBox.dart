import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/widgets/myButtons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      @required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.indigo.shade200,
      content: SizedBox(
        height: 130,
        width: 400,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //text field for user input
          TextField(
            controller: controller,
            style: GoogleFonts.lato(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task!",
              hintStyle: GoogleFonts.lato(color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // save button
                MyButtons(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 10,
                ),
                //cancel button
                MyButtons(text: "Cancel", onPressed: onCancel)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
