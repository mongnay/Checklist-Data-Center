import 'package:checklist/temperature.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homapage.dart';

Future<void> main() async {
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCoOaV67yQIVb_hMsKiQImdtVx0svmkA9Y",
          authDomain: "checklist-data-center-15e56.firebaseapp.com",
          projectId: "checklist-data-center-15e56",
          storageBucket: "checklist-data-center-15e56.appspot.com",
          messagingSenderId: "382077383204",
          appId: "1:382077383204:web:6d7df72ff426f7b7a01eb1"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: HomeScreen());
  }
}
