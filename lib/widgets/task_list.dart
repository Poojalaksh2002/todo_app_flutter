import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/list_tiles.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskLength,
            itemBuilder: (context, index) {
              return ListTiles(
                title: taskData.taskModel[index].title,
                isChecked: taskData.taskModel[index].isTick,
                longPressFunction: () {
                  taskData.deleteTaskFunction(taskData.taskModel[index]);
                },
                toggleIsChecked: (isChecked) {
                  taskData.updateTickTaskFunction(taskData.taskModel[index]);
                  // setState(() {
                  //   taskData.taskModel[index].toggleIsTick(isChecked!);
                  // });
                },
              );
            });
      },
    );
  }
}
