import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(FleetManagementApp());
}

class FleetManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fleet Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dashboard(),
    );
  }
}