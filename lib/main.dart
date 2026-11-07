import 'package:flutter/material.dart';
import 'task_card.dart'; 

void main() => runApp(const MaterialApp(home: TodoDemo()));

class TodoDemo extends StatefulWidget {
  const TodoDemo({super.key});
  @override
  State<TodoDemo> createState() => _TodoDemoState();
}

class _TodoDemoState extends State<TodoDemo> {
  final List<String> _tasks = List.generate(5, (i) => 'Công việc ${i + 1}');
  bool _reduceMotion = false;

  // Một chỗ duy nhất quyết định có animation hay không
  Duration _duration(BuildContext context) {
    final system = MediaQuery.disableAnimationsOf(context);
    return (_reduceMotion || system)
        ? Duration.zero
        : const Duration(milliseconds: 250);
  }

  @override
  Widget build(BuildContext context) {
    final d = _duration(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo mini'),
        actions: [
          const Center(child: Text('Tắt Animation')),
          Switch(
            value: _reduceMotion,
            onChanged: (v) => setState(() => _reduceMotion = v),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, i) {
          final t = _tasks[i];
          return Dismissible(
            key: ValueKey(t),
            onDismissed: (_) => setState(() => _tasks.remove(t)),
            child: TaskCard(title: t, duration: d), // Gọi UI từ file task_card.dart
          );
        },
      ),
    );
  }
}