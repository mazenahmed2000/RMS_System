import 'package:flutter/cupertino.dart';

class StandardText extends StatelessWidget {
  final text;
  final textColor;
  final textSize;
  StandardText({
    super.key,
    required this.text,
    this.textColor,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: textColor, fontFamily: 'Cairo', fontSize: textSize),
    );
  }
}
