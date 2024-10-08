import 'package:flutter/material.dart';
import 'package:romaisaa/elements/AppointmentsTable.dart';
import 'package:romaisaa/elements/SideBar.dart';
import 'package:romaisaa/elements/logoElement.dart';
import 'package:romaisaa/elements/myAppBar.dart';
import 'package:romaisaa/main.dart';

import 'package:romaisaa/screens/HomeScreen.dart';
import 'package:romaisaa/screens/testScreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 222, 217),
      appBar: MyAppBar(appBar: AppBar()),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 160,
              ),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  isDark = !isDark;
                  setState(() {
                    switchValue = value;
                  });
                },
              )
            ],
          ),
          SideBarWidget(
            homeId: 4,
          ),
        ],
      ),
    );
  }
}
