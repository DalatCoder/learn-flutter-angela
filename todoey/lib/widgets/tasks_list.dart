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
            final task = taskData.tasks[index];
            return TaskTitle(
              taskTitle: task.name,
              isChecked: task.isDone,
              onCheckChanged: (checkboxState) {
                taskData.updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount);
    });
  }
}
