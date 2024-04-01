import 'package:flutter/material.dart';
import 'package:flutterweb/Components/default_button.dart';

import 'menu_item.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          Text(
            "Foodi".toUpperCase(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  MenuItem(
                    key: UniqueKey(),
                    title: "Home",
                    press: () {},
                  ),
                  MenuItem(
                    key: UniqueKey(),
                    title: "About",
                    press: () {},
                  ),
                  MenuItem(
                    key: UniqueKey(),
                    title: "Pricing",
                    press: () {},
                  ),
                  MenuItem(
                    key: UniqueKey(),
                    title: "Contact",
                    press: () {},
                  ),
                  MenuItem(
                    key: UniqueKey(),
                    title: "Login",
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10), // Add SizedBox for spacing
          DefaultButton(
            text: "Get Started",
            press: () {},
          ),
        ],
      ),
    );
  }
}
