import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';

bool isDark = false;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(255, 191, 92, 60),
      home: HomeScreen(),
    );
  }
}
