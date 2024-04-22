// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../constants.dart';

class Price extends StatelessWidget {
  const Price({
    super.key,
    required this.amount,
  });
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\$",
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.w600, color: primaryColor),
        children: [
          TextSpan(
            text: amount,
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.black),
          ),
          const TextSpan(
            text: "/kg",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
