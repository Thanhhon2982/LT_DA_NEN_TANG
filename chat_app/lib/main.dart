import 'package:flutter/material.dart';
import 'package:chat_app/screens/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryColor,
          primary: kPrimaryColor,
          background: kBackgroundColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
