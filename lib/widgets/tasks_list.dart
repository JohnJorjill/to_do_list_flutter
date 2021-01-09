import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_flutter/models/task_data.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Consumer allows to get data from Provider by specifying name and use it just by name
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        // iterate over list of tasks and build them using TaskTile widget
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggleDone();
//            });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
