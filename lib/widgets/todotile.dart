// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoTile extends StatelessWidget {
  final String? taskName;
  final bool? taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteTask;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
            onPressed: deleteTask,
            icon: Icons.delete,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Row(
              children: [
                // checkbox
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                //text title
                Text(
                  taskName!,
                  style: GoogleFonts.lato(
                    decoration: taskCompleted!
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
