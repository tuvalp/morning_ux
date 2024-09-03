import 'package:flutter/material.dart';

import '../widgets/alarms_list.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/top_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // Adjust height as needed
          child: CustomAppBar(),
        ),
        body: AlarmClockList(),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }
}
