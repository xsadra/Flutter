import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;

  TaskTile({this.taskTitle, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {},
      ),
    );
  }
}
