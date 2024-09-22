// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:romaisaa/elements/AppointmentsTable.dart';
import 'package:romaisaa/elements/SideBar.dart';
import 'package:romaisaa/elements/logoElement.dart';
import 'package:romaisaa/elements/myAppBar.dart';
import 'package:romaisaa/screens/HomeScreen.dart';
import 'package:romaisaa/screens/testScreen.dart';

class MedicalRecordScreen extends StatelessWidget {
  const MedicalRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 222, 217),
      appBar: MyAppBar(appBar: AppBar()),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: [
              Container(
                height: 20,
              ),

              // ClickMeee(),
            ],
          ),
          SideBarWidget(
            homeId: 3,
          ),
        ],
      ),
    );
  }
}
