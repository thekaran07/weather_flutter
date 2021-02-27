void main() {
  PerformTasks();
}

void PerformTasks() async {
  task1();
  task2();
}

void task1() {
  String result = "Task1 data";
  print("Task1 complete");
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = "Task2 data";
    print("Task2 complete");
    return result;
  });
}

void task3(String task2Data) {
  String result = "task 3 data";
  print('Task3 complete with $task2Data');
}
