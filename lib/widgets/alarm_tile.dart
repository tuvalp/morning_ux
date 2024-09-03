import 'package:flutter/material.dart';

class AlarmTile extends StatelessWidget {
  final String time;
  final String label;
  final bool isActive;
  final ValueChanged<bool> onToggle;

  const AlarmTile({
    Key? key,
    required this.time,
    required this.label,
    required this.isActive,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        time,
        style: TextStyle(
            color: isActive ? Colors.white : Colors.grey, fontSize: 24),
      ),
      subtitle: Text(
        label,
        style: TextStyle(
            color: isActive ? Colors.white70 : Colors.grey, fontSize: 18),
      ),
      trailing: Switch(
        value: isActive,
        onChanged: onToggle,
        activeColor: Colors.white,
      ),
    );
  }
}
