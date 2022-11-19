import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskname: "Buy milk"),
    Task(taskname: "buy break"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount {
    return _tasks.length;
  }

  void addtask(String newtasktitle) {
    final task = Task(taskname: newtasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetasks(Task task) {
    task.toggledone();
    notifyListeners();
  }

  void deletetasks(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
