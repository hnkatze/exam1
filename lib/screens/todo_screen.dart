import 'package:exam1/components/multi_compo.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<String> tasks = [];
  final TextEditingController taskController = TextEditingController();

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text);
        taskController.clear();
      });
    }
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCompo(title: "Todo List"),
      drawer: const DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Input field and add button
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: const InputDecoration(
                      hintText: 'Enter a new task',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTask,
                ),
              ],
            ),
            const SizedBox(height: 20),
            // List of tasks
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tasks[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => removeTask(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
