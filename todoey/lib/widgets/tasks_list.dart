import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';

import 'task_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTitle(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              onCheckChanged: (checkboxState) {
                //TODO:
                // setState(() {
                //   taskData.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskData.taskCount);
    });
  }
}
