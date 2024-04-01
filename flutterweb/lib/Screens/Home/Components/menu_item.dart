import 'package:flutter/material.dart';

import '../../../constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;
  const MenuItem({
    required Key key,
    required  this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press(); // Call press if it's not null
            },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
