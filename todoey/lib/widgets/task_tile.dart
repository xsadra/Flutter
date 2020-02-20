import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('New Task'),
      trailing: Checkbox(
        value: false,
        onChanged: (newValue) {},
      ),
    );
  }
}
