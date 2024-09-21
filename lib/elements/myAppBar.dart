
import 'package:flutter/material.dart';
import 'package:romaisaa/screens/HomeScreen.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  MyAppBar({
    super.key, this.appBar,
  });
  final appBar;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'assets/images/logo.png',
                height: 80,
                width: 80,
              ),
            ),
            Text(
              'DR. ROMAISAA ',
              style: TextStyle(color: Color(0xFFFFFFFF)),
            ),
            Text(
              '  Clinc',
              style: TextStyle(
                  color: bColor, fontFamily: 'VariableFont', fontSize: 30),
              textAlign: TextAlign.end,
            ),
          ],
        ),
        backgroundColor:(switchValue? orColor:bColor));
  }

  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
