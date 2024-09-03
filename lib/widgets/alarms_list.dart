import 'package:flutter/material.dart';

import '../models/alarm.dart';
import '../widgets/alarm_item.dart';

class AlarmClockList extends StatelessWidget {
  AlarmClockList({Key? key}) : super(key: key);
  final List<Alarm> alarms = [
    Alarm(time: '07:00 AM', label: 'Morning Alarm', isActive: true),
    Alarm(time: '08:30 AM', label: 'Work Alarm', isActive: false),
    Alarm(time: '06:00 PM', label: 'Exercise Alarm', isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: alarms.length,
      itemBuilder: (context, index) {
        return AlarmItem(alarm: alarms[index]);
      },
    );
  }
}
