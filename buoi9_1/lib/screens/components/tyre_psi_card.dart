// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:buoi9_1/models/TyrePsi.dart';

import '../../constanins.dart';

class TyrePsiCard extends StatelessWidget {
  const TyrePsiCard({
    super.key,
    required this.isBottomTwoTyre,
    required this.tyrePsi,
  });

  final bool isBottomTwoTyre;
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    // Check if the device is in landscape mode
    var isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // Adjust padding and spacing based on orientation
    double adjustedPadding = isLandscape ? defaultPadding / 2 : defaultPadding;
    double textSize = isLandscape ? 14 : 16;

    return Container(
      padding: EdgeInsets.all(adjustedPadding),
      decoration: BoxDecoration(
        color:
            tyrePsi.isLowPressure ? redColor.withOpacity(0.1) : Colors.white10,
        border: Border.all(
            color: tyrePsi.isLowPressure ? redColor : primaryColor, width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Flex(
        direction: isLandscape ? Axis.horizontal : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: isLandscape ? 2 : 0,
            child: lowPressureText(context, textSize),
          ),
          if (isLandscape) const Spacer(),
          psiText(context, psi: tyrePsi.psi.toString(), textSize: textSize),
          SizedBox(height: adjustedPadding),
          Text(
            "${tyrePsi.temp}\u2103",
            style: TextStyle(fontSize: textSize),
          ),
          if (!isLandscape) const Spacer(),
          if (!isLandscape) lowPressureText(context, textSize),
        ],
      ),
    );
  }

  Column lowPressureText(BuildContext context, double textSize) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Low".toUpperCase(),
          style: Theme.of(context).textTheme.headline3!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: textSize),
        ),
        Text(
          "Pressure".toUpperCase(),
          style: TextStyle(fontSize: textSize),
        ),
      ],
    );
  }

  Widget psiText(BuildContext context,
      {required String psi, required double textSize}) {
    return Text.rich(
      TextSpan(
        text: psi,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: textSize + 4,
            ),
        children: [
          TextSpan(
            text: " psi",
            style: TextStyle(fontSize: textSize),
          )
        ],
      ),
    );
  }
}
