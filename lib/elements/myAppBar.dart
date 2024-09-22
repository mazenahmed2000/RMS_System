import 'package:flutter/material.dart';
import 'package:romaisaa/main.dart';
import 'package:romaisaa/screens/HomeScreen.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.appBar,
  });

  final appBar;

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}

class _MyAppBarState extends State<MyAppBar> {
  bool switchValue = true; // Assuming you have a switchValue variable somewhere

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
            '  Clinc',
            style: TextStyle(
              color: bColor,
              fontFamily: 'VariableFont',
              fontSize: 30,
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
      backgroundColor: (isDark ? bColor:orColor),
    );
  }

  Size get preferredSize =>
      new Size.fromHeight(widget.appBar.preferredSize.height);
}
