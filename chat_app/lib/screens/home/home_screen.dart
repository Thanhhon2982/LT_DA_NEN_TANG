import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
