import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:romaisaa/elements/DataItem.dart';
import 'package:romaisaa/elements/rowElement.dart';
import 'package:romaisaa/elements/headersContiner.dart';
import 'package:romaisaa/elements/titleElement.dart';
import 'package:romaisaa/elements/standadText.dart';

class AppointmentsTable extends StatefulWidget {
  AppointmentsTable({super.key});
  @override
  State<AppointmentsTable> createState() => _AppointmentsTableState();
}

class _AppointmentsTableState extends State<AppointmentsTable> {
  @override
  Widget build(BuildContext context) {
    List<String> namesList = [
      "مازن احمد رجب علي معتوق",
      "محمود ايمن محمود احمد",
      "محمد خالد احمد احمد",
      "وجيه صبري محمد احمد",
      "شوقي محمود ربيع احمد",
      "مازن مدحت احمداحمد",
      "مصطفي والي حسن احمد",
      "حسن عبدالله احمداحمد"
    ];
    List<String> PhonNumbersList = [
      '01069121400',
      '01069121400',
      '01069121400',
      '01069121400',
      '01069121400',
      '01069121400',
      '01069121400',
      '01069121400',
    ];
    List<Widget> rowWidgetList = [
      HeadersContainer(),
    ];
    for (int i = 0; i < namesList.length; i++) {
      rowWidgetList.add(RowElement(
        patName: namesList[i],
        patNum: i,
        patPhonNum: PhonNumbersList[i],
      ));
    }
    return Container(
      margin: EdgeInsets.all(20),
      width: 1200,
      height: 570,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(15), // Rounded corners
        // border: Border.all(
        //   color: Color.fromARGB(255, 255, 255, 255), // Lighter border color
        // ), // Border color and width
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(12), // Rounded corners for the table
        child: ListView(children: rowWidgetList),
      ),
    );
  }
}
