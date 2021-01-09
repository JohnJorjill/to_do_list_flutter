import 'package:flutter/material.dart';

import 'task.dart';

// container which changes state of the subscribed widgets if data is modified
class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: "Buy a car")];

  // returns length of tasks list
  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
