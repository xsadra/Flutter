import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kMainColor,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(),
            );
          },
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  right: 30,
                  left: 30,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        size: 40,
                        color: kMainColor,
                      ),
                      radius: 30,
                      backgroundColor: kMainSecondColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        color: kMainSecondColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} tasks',
                      style: TextStyle(
                        fontSize: 18,
                        color: kMainSecondColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: kMainSecondColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: TasksList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
