import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';

import '../models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: ((context, index) {
            final task = taskData.tasks[index];
            return TaskTile(task.isdone, task.taskname, (checkboxstate) {
              taskData.updatetasks(task);
            }, () {
              taskData.deletetasks(task);
            });
          }),
          itemCount: taskData.taskcount);
    });
  }
}
