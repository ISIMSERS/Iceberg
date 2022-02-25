import 'package:flutter/material.dart';
import 'package:iceberg/Components/Task.dart';

class ListBodyPage extends StatefulWidget {
  ListBodyPage({Key? key}) : super(key: key);

  @override
  State<ListBodyPage> createState() => _ListBodyPageState();
}

class _ListBodyPageState extends State<ListBodyPage> {
  @override
  Widget build(BuildContext context) {
    final List<Task>? Tasks = [
      Task("Task 1", DateTime.now().toLocal().toString()),
      Task("Task 2", DateTime.now().toLocal().toString()),
      Task("Task 3", DateTime.now().toLocal().toString()),
      Task("Task 4", DateTime.now().toLocal().toString()),
      Task("Task 5", DateTime.now().toLocal().toString()),
    ];

    return ListView.builder(
      itemCount: Tasks!.length,
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          leading: const Icon(Icons.task),
          title: Text(Tasks[i].title),
          subtitle: Text(Tasks[i].Date),
        );
      },
    );
  }
}
