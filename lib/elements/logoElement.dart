import 'package:flutter/material.dart';

class LogoElement extends StatelessWidget {
  const LogoElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: const Color.fromARGB(80, 255, 255,
                    255), // Set the border color (in this case, white)
                width: 1.0, // Set the border width
              ),
            ),
            child: Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 150,
            ),
          ),
        ),
        SizedBox(
          width: 50,
        )
      ],
    );
  }
}
