import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key ,key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int pressedCount = 0;
  int longPressCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TextButton Example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(35),
              child: TextButton.icon (
                icon: Icon(Icons.add_shopping_cart),
                label: Text("Dark"),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: TextButton.icon (
                icon: Icon(Icons.add_shopping_cart),
                label: Text("Light"),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: TextButton.icon (
                icon: Icon(Icons.monetization_on),
                label: Text("Dark"),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: TextButton.icon (
                icon: Icon(Icons.monetization_on),
                label: Text("Light"),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
