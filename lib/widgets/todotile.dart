// ignore_for_file: invalid_required_positional_param

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String? taskName;
  final bool? taskCompleted;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      @required this.taskName,
      @required this.taskCompleted,
      @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.red,
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
            style: TextStyle(
              decoration: taskCompleted!
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
