import 'package:flutter/material.dart';

class SocalButtons extends StatelessWidget {
  const SocalButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/fb.png"),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/nth2982.jpg"),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/images/twitter.png"),
        ),
      ],
    );
  }
}
