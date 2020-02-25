import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  void loadTasks() async {
    _tasks = await _readTasks() ?? [Task(name: 'My first task')];
    notifyListeners();
  }

  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rawDataTasks = [];
    _tasks.forEach((element) {
      rawDataTasks.add('${element.name}||${element.isDone.toString()}');
    });
    await prefs.setStringList('data', rawDataTasks);
  }

  Future<List<Task>> _readTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> rawDataTasks = prefs.getStringList('data') ?? [];
    List<Task> tasks = [];
    rawDataTasks.forEach((element) {
      List<String> rawElement = element.split('||');
      tasks.add(
        Task(
          name: rawElement[0],
          isDone: rawElement[1] == 'true',
        ),
      );
    });
    return tasks;
  }
}
