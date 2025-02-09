import 'package:flutter/material.dart';
import 'package:flutter_studies/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task("Aprender flutter", "assets/images/dash.png", 4),
    Task("Andar de bike", "assets/images/bike.webp", 2),
    Task("Ler", "assets/images/ler.jpg", 1),
    Task("Meditar", "assets/images/meditar.jpeg", 5),
    Task("Jogar", "assets/images/play.jpg", 1),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
