import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/constants/constants.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: kMainSecondColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kMainColor,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                Provider.of<TaskData>(context,listen: false).tempValue = newValue;
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {},
              color: kMainColor,
              child: Text(
                'Add',
                style: TextStyle(
                  color: kMainSecondColor,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                String newTaskTitle = Provider.of<TaskData>(context, listen: false).tempValue;
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
