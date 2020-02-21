import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  String tempValue;

  List<Task> _tasks = [
    Task(name: 'first task'),
    Task(name: 'second task'),
    Task(name: 'third task'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
}
