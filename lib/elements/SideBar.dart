import 'package:flutter/material.dart';
import 'package:romaisaa/screens/HomeScreen.dart';
import 'package:romaisaa/screens/SubscriptionScreen.dart';
import 'package:romaisaa/screens/medicalRecordScreen.dart';
import 'package:romaisaa/screens/paymentScreen.dart';
import 'package:romaisaa/screens/settingScreen.dart';
import 'package:romaisaa/screens/testScreen.dart';

class SideBarWidget extends StatelessWidget {
  final homeId;
  SideBarWidget({
    super.key,
    this.homeId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.blue[50],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            trailing: Icon(
              Icons.home_filled,
              color: (homeId == 0) ? orColor : bColor,
            ),
            title: (homeId == 0)
                ? SelectedCategory(name: 'Home Page')
                : Text('Home Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  fullscreenDialog: true,
                  builder: (BuildContext context) {
                    return HomeScreen();
                    
                  },
                ),
              );
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.date_range_outlined,
              color: (homeId == 1) ? orColor : bColor,
            ),
            title: (homeId == 1)
                ? SelectedCategory(name: 'Subscritption')
                : Text('Subscritption'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SubscriptionScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.payment,
              color: (homeId == 2) ? orColor : bColor,
            ),
            title: (homeId == 2)
                ? SelectedCategory(name: 'payment')
                : Text('payment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return PaymentScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.medical_information,
              color: (homeId == 3) ? orColor : bColor,
            ),
            title: (homeId == 3)
                ? SelectedCategory(name: 'Medical record')
                : Text('Medical record'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return MedicalRecordScreen();
                  },
                ),
              );
            },
          ),
          ListTile(
            trailing: Icon(
              Icons.settings,
              color: (homeId == 4) ? orColor : bColor,
            ),
            title: (homeId == 4)
                ? SelectedCategory(name: 'settings')
                : Text('settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SettingScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SelectedCategory extends StatelessWidget {
  final String name;
  SelectedCategory({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(name)),
      width: 85,
      decoration: BoxDecoration(
        color: Color.fromARGB(127, 191, 93, 60),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
