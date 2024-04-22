// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

import '../../constanins.dart';
import '../../home_controller.dart';
import 'tmp_btn.dart';

class TempDetails extends StatelessWidget {
  const TempDetails({
    super.key,
    required HomeController controller,
  })  : _controller = controller;

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    // Check the orientation of the device
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: isLandscape
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTemperatureSwitch(context),
                const SizedBox(width: defaultPadding),
                Expanded(child: _buildTemperatureControl()),
                const SizedBox(width: defaultPadding),
                _buildTemperatureInfo(context),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTemperatureSwitch(context),
                Spacer(),
                _buildTemperatureControl(),
                Spacer(),
                _buildTemperatureInfo(context),
              ],
            ),
    );
  }

  Widget _buildTemperatureSwitch(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: ClipOval(
                  child: Image.asset(
                    "assets/images/trung1.png",
                    fit: BoxFit
                        .cover, // Adjusts the image to cover the entire space of ClipOval.
                    width:
                        62.0, // Set the width equal to the actual size of the PNG image.
                    height:
                        62.0, // Set the height equal to the actual size of the PNG image.
                  ),
                ),
                iconSize:
                    62.0, // Set the overall size of the IconButton to match the actual size of the image PNG.
              ),
              Text("Cool",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18)), // Label text below the IconButton.
            ],
          ),
          const SizedBox(width: defaultPadding),
          TempBtn(
            isActive: !_controller.isCoolSelected,
            svgSrc: "assets/icons/heatShape.svg",
            title: "Heat",
            activeColor: redColor,
            press: _controller.updateCoolSelectedTab,
          ),
        ],
      ),
    );
  }

  Widget _buildTemperatureControl() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(Icons.arrow_drop_up, size: 48),
        ),
        Text(
          "29" + "\u2103",
          style: TextStyle(fontSize: 86),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(Icons.arrow_drop_down, size: 48),
        ),
      ],
    );
  }

  Widget _buildTemperatureInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("CURRENT TEMPERATURE"),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Inside".toUpperCase(),
                ),
                Text(
                  "20" + "\u2103",
                  style: Theme.of(context).textTheme.headline5,
                )
              ],
            ),
            const SizedBox(width: defaultPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Outside".toUpperCase(),
                  style: TextStyle(color: Colors.white54),
                ),
                Text(
                  "35" + "\u2103",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white54),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
