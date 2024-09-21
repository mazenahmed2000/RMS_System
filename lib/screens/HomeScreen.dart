// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:romaisaa/elements/AppointmentsTable.dart';
import 'package:romaisaa/elements/SideBar.dart';
import 'package:romaisaa/elements/logoElement.dart';
import 'package:romaisaa/elements/myAppBar.dart';
import 'package:romaisaa/screens/testScreen.dart';

const orColor = Color.fromARGB(255, 191, 92, 60);
const gColor = Color.fromARGB(255, 191, 188, 183);
const bColor = Color.fromARGB(255, 54, 71, 89);
const dgColor = Color.fromARGB(255, 116, 125, 120);

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  bool switchValue = true;

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

              AppointmentsTable(),
              // ClickMeee(),
            ],
          ),
          SideBarWidget(
            homeId: 0,
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.startFloat, // FAB on the left

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print('FAB pressed!');
        },
        child: Icon(Icons.add_box_rounded, size: 35, color: orColor),
        backgroundColor: Color.fromARGB(150, 255, 255, 255),
      ),
    );
  }
}
