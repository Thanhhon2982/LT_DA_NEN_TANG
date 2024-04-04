import 'package:flutter/material.dart';

import '../../../constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({
    super.key,
    this.text,
    this.image,
  });
  final String? text, image;

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: <Widget>[
            const Spacer(),
            const Text(
              "TOKOTO",
              style: TextStyle(
                fontSize: 32,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.05, // Adjust as needed
            ),
            Text(
              widget.text!,
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 2),
            Image.asset(
              widget.image!,
              height: constraints.maxHeight * 0.4, // Adjust as needed
              width: constraints.maxWidth * 0.6, // Adjust as needed
            ),
          ],
        );
      },
    );
  }
}
