import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String title;
  final Duration duration;
  
  const TaskCard({super.key, required this.title, required this.duration});
  
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> with SingleTickerProviderStateMixin {
  late final AnimationController _c;
  late final Animation<double> _scale;
  bool _expanded = false;
  bool _done = false;

  @override
  void initState() {
    super.initState();
    _c = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scale = Tween<double>(begin: 1.0, end: 1.4)
        .animate(CurvedAnimation(parent: _c, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _c.dispose(); // giải phóng Ticker
    super.dispose();
  }

  Future<void> _toggleDone() async {
    setState(() => _done = !_done);
    if (widget.duration == Duration.zero) return; // chế độ giảm chuyển động
    await _c.forward(from: 0);
    if (mounted) _c.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: widget.duration,
      margin: const EdgeInsets.all(😎,
      decoration: BoxDecoration(
        color: _done ? Colors.green.shade100 : Colors.white,
        borderRadius: BorderRadius.circular(_expanded ? 24 : 😎,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          ListTile(
            leading: ScaleTransition(
              scale: _scale,
              child: IconButton(
                icon: Icon(_done
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked),
                onPressed: _toggleDone,
              ),
            ),
            title: Text(widget.title),
            onTap: () => setState(() => _expanded = !_expanded),
          ),
          AnimatedCrossFade(
            duration: widget.duration,
            crossFadeState: _expanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            firstChild: const SizedBox(width: double.infinity),
            secondChild: const Padding(
              padding: EdgeInsets.all(12),
              child: Text('Chi tiết công việc hiện ở đây.'),
            ),
          ),
        ],
      ),
    );
  }
}