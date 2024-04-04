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

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }

}

class MyHomePageState extends State<MyHomePage> {
  int tapCount = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Example"),
      ),
      body: Center(
          child: Text("Tap Count: " + this.tapCount.toString()
              + ", Index: " + this.selectedIndex.toString())
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "Contacts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Emails",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  void onTapHandler(int index)  {
    this.setState(() {
      this.tapCount++;
      this.selectedIndex = index;
    });
  }
}