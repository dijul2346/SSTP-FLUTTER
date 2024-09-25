
import 'package:employee_details/details_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScreenEmployeeDetails(
      name: 'Dijul',
      id: '23241',
      dept: 'CSE',
      mail: 'dcm',
      gender: 'Male',
      addr: 'sjc',
      sal: 100000,
    ));
  }
}