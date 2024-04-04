import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function? press; // Make press nullable
  const DefaultButton({
    super.key, // Make key nullable
    required this.text,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          ),
        ),
        onPressed: press as void Function()? ?? () {}, // Check for nullability
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
