import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskModel = [
    Task(title: 'Task 1'),
    Task(title: 'Task 2'),
    Task(title: 'Task 3')
  ];

  // when we dont want to change _taskModel list directly.
  UnmodifiableListView<Task> get taskModel {
    return UnmodifiableListView(_taskModel);
  }

  int get taskLength {
    return _taskModel.length;
  }

  void addTaskFunction(addTaskValue) {
    _taskModel.add(Task(title: addTaskValue));
    notifyListeners();
  }

  void updateTickTaskFunction(Task task) {
    task.toggleIsTick();
    notifyListeners();
  }

  void deleteTaskFunction(Task task) {
    print('Gonna remove');
    _taskModel.remove(task);
    notifyListeners();
  }
}
