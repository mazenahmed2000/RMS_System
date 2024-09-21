import 'package:flutter/material.dart';

class MyCheckboxExample extends StatefulWidget {
  @override
  _MyCheckboxExampleState createState() => _MyCheckboxExampleState();
}

class _MyCheckboxExampleState extends State<MyCheckboxExample> {
  bool isChecked = false; // Initial state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox Example')),
      body: Center(
        child: Checkbox(
          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue ?? false;
            });
          },
        ),
      ),
    );
  }
}
