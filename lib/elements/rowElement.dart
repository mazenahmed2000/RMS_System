import 'package:flutter/material.dart';
import 'package:romaisaa/elements/standadText.dart';
import 'package:romaisaa/screens/HomeScreen.dart';

class RowElement extends StatefulWidget {
  final num patNum;
  final String patName;
  final String patPhonNum;

  const RowElement({
    Key? key,
    required this.patNum,
    required this.patName,
    required this.patPhonNum,
  }) : super(key: key);

  @override
  State<RowElement> createState() => _RowElementState();
}

class _RowElementState extends State<RowElement> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 4,
          width: 4,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.all(12),
            width: 1190,
            height: 80,
            color: const Color.fromARGB(210, 227, 242, 253),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Color.fromARGB(100, 167, 178, 185),
                    height: 50,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.highlight_remove_sharp,
                          color: Colors.red,
                        ),
                        Icon(Icons.edit_note),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: StandardText(text: widget.patPhonNum),
                  ),
                ),
                Container(
                  width: 200,
                  child: Center(child: StandardText(text: widget.patName)),
                ),
                Checkbox(
                  activeColor: orColor,
                  value: isChecked,
                  onChanged: (newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                ),
                Container(
                  width: 60,
                  child: Center(
                      child: StandardText(text: widget.patNum.toString())),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
