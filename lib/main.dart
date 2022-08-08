import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkst Data Center',
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Checklist Data Center"),
      ),
      body: const Center(
      child: Text('Hello World'),
    ),
      ),
    );
  }
}



