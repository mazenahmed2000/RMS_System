import 'package:flutter/material.dart';
import 'package:romaisaa/elements/titleElement.dart';
import 'package:romaisaa/main.dart';
import 'package:romaisaa/screens/HomeScreen.dart';

class HeadersContainer extends StatelessWidget {
  const HeadersContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: (isDark ? bColor : orColor),
      width: 1200,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleElement(width: 100, string: 'تعديل'),
          TitleElement(width: 300, string: 'رقم الموبايل'),
          TitleElement(width: 450, string: 'اسم المريض'),
          TitleElement(width: 70, string: 'رقم'),
        ],
      ),
    );
  }
}
