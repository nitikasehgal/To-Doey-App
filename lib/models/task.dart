class Task {
  String taskname;
  bool isdone;
  Task({required this.taskname, this.isdone = false});

  void toggledone() {
    isdone = !isdone;
  }
}
