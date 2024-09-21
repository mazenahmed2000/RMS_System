import 'package:flutter/material.dart';
import 'package:romaisaa/elements/standadText.dart';

class TitleElement extends StatelessWidget {
  final double width;
  final String string;
  const TitleElement({
    super.key,
    required this.width,
    required this.string,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            color: Colors.blue[50],
            height: 50,
            width: width,
            child: Center(
              child: StandardText(
                text: string,
              ),
            ),
          ),
        ),
        Container(
          width: 4,
        )
      ],
    );
  }
}
