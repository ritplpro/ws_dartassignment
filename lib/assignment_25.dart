import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('Enter your choice:');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        removeTask(tasks);
        break;
      case '3':
        viewTasks(tasks);
        break;
      case '4':
        print('Exiting the program.');
        return;
      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
    }
  }
}

void addTask(List<String> tasks) {
  print('Enter the task:');
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print('Task added successfully!');
}

void removeTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks to remove.');
    return;
  }

  print('Select the task number to remove:');
  for (int i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }

  int index = int.parse(stdin.readLineSync()!) - 1;
  if (index < 0 || index >= tasks.length) {
    print('Invalid task number.');
  } else {
    String removedTask = tasks.removeAt(index);
    print('Task "$removedTask" removed successfully!');
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('No tasks added yet.');
  } else {
    print('Your Tasks:');
    for (int i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }
}
