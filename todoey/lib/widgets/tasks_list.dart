import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final currentTask = taskData.tasks[index];
            return TaskTile(
              taskTitle: currentTask.name,
              isChecked: currentTask.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(currentTask);
              },
              longPressCallback: () {
                taskData.deleteTask(currentTask);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
