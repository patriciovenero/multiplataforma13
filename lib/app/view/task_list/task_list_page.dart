import 'package:flutter/material.dart';
import 'package:mi_tarea02_flutter/app/model/task.dart';
import 'package:mi_tarea02_flutter/app/view/components/h1.dart';
import 'package:mi_tarea02_flutter/app/view/components/shape.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task list'),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Center(child: Text('Atras')),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                Row(children: [Shape()]),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/tasks-list-image.png',
                      width: 120,
                      height: 120
                      ),
                    const SizedBox(height: 16),
                    const H1('Completa tus tareas', color: Colors.white),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: H1('Tareas'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.separated(
                itemCount: TaskList.length,
                itemBuilder: (_, index) => _TaskItem(TaskList[index]),
                separatorBuilder: (_, __) => const SizedBox(height: 16)
            ),
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 50),
      ),
    );
  }
}

final TaskList = <Task>[
  Task('Tarea 1'),
  Task('Tarea 2'),
  Task('Tarea 3'),
];

class _TaskItem extends StatelessWidget {
  const _TaskItem(this.task, {super.key});

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical:18),
        child: Row(
          children: [
            Icon(
              Icons.check_box_outline_blank,
              color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 10),
            Text(task.title)
          ],
        ),
      ),
    );
  }
}