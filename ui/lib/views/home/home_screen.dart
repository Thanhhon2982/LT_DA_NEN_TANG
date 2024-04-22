import 'package:flutter/material.dart';
import 'package:ui/data/constants/app_colors.dart';
import 'package:ui/views/home/pages/pages.dart';
import 'package:ui/views/home/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  int pageNumber = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTap(int p) {
    pageController.animateToPage(
      p,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    setState(() {
      pageNumber = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const StorePage(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      extendBody: true,
      bottomSheet: AppBottomSheet(
        pageNumber: pageNumber,
        onTap: onTap,
      ),
    );
  }
}
