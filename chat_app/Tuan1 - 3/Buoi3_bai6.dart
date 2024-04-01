import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
          title: Text("Banner Example"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topCenter,
            child: Banner (
              message: 'Offer 20% off',
              location: BannerLocation.topStart,
              color: Colors.red,
              child: Container(
                height: 186,
                width: 280,
                child: Image.network(
                  'https://raw.githubusercontent.com/o7planning/rs/master/flutter/fast_food.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        )
    );
  }
}