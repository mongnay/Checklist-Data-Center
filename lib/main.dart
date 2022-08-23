import 'package:checklist/temperature.dart';
import 'package:flutter/material.dart';

import 'homapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: HomeScreen());
  }
}
