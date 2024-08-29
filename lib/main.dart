import 'package:flutter/material.dart';
import 'package:proyek_todolist/view/home_page.dart';
import 'package:proyek_todolist/services/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:proyek_todolist/view/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const LoginPage(),
    );
  }
}
