import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'first task'),
    Task(name: 'second task'),
    Task(name: 'third task'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(taskTitle: tasks[0].name,isChecked: false,),
        TaskTile(taskTitle: tasks[1].name,isChecked: false,),
        TaskTile(taskTitle: tasks[2].name,isChecked: false,),
      ],
    );
  }
}
