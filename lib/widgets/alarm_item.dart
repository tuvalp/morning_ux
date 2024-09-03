import 'package:flutter/material.dart';

import '../models/alarm.dart';

class AlarmItem extends StatelessWidget {
  final Alarm alarm;

  const AlarmItem({Key? key, required this.alarm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: ListTile(
        title: Text(
          alarm.time,
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: alarm.isActive ? Colors.black : Colors.grey,
          ),
        ),
        subtitle: Text(
          alarm.label,
          style: TextStyle(
            color: alarm.isActive ? Colors.black : Colors.grey,
          ),
        ),
        trailing: Switch(
          value: alarm.isActive,
          onChanged: (value) {
            // Toggle alarm state
          },
        ),
      ),
    );
  }
}
