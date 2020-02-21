import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'first task'),
    Task(name: 'second task'),
    Task(name: 'third task'),
  ];

  int get taskCount{
    return tasks.length;
  }

}