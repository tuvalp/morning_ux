import 'package:flutter/material.dart';
import 'package:morning_ux/widgets/bottom_bar.dart';
import 'package:morning_ux/widgets/top_bar.dart';
import 'package:morning_ux/widgets/alarm_tile.dart';

void main() {
  runApp(AlarmClockApp());
}

class AlarmClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Clock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlarmClockHomePage(),
    );
  }
}

class AlarmClockHomePage extends StatefulWidget {
  @override
  _AlarmClockHomePageState createState() => _AlarmClockHomePageState();
}

class _AlarmClockHomePageState extends State<AlarmClockHomePage> {
  // Example list of alarms
  List<Map<String, dynamic>> alarms = [
    {'time': '06:30 AM', 'label': 'Morning Run', 'isActive': true},
    {'time': '07:00 AM', 'label': 'Wake Up', 'isActive': false},
    {'time': '08:00 AM', 'label': 'Meeting Reminder', 'isActive': true},
    {'time': '09:30 AM', 'label': 'Breakfast', 'isActive': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlueAccent.shade100,
                  Colors.lightBlueAccent.shade200,
                  Colors.lightBlueAccent.shade400,
                  Colors.blueAccent
                ],
              ),
            ),
          ),
          Column(
            children: [
              // Top Bar
              CustomAppBar(),
              Expanded(
                child: ListView.builder(
                  itemCount: alarms.length,
                  itemBuilder: (context, index) {
                    return AlarmTile(
                      time: alarms[index]['time'],
                      label: alarms[index]['label'],
                      isActive: alarms[index]['isActive'],
                      onToggle: (value) {
                        setState(() {
                          alarms[index]['isActive'] = value;
                        });
                      },
                    );
                  },
                ),
              ),
              const CustomBottomBar(),
            ],
          ),
        ],
      ),
    );
  }
}
