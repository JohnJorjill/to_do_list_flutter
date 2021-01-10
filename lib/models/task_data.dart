import 'dart:collection';

import 'package:flutter/material.dart';

import 'task.dart';

// container which changes state of the subscribed widgets if data is modified
class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: "Buy a car")];

  // return unmodifiable version of tasks
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // returns length of tasks list
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
