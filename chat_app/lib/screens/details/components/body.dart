import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAnsIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 40,
                child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Buy Now!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
