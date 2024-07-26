class Task {
  final String? title;
  bool isTick;

  Task({this.title, this.isTick = false});

  void toggleIsTick() {
    isTick = !isTick;
  }
}
