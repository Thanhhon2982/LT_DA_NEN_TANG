import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
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
    return Scaffold (
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Pressed: " + this.pressedCount.toString()
              +" --- Long Press: " + this.longPressCount.toString()),
        ),
        body: Center (
          child:  ElevatedButton (
              child: Text("Test Me",
                style: TextStyle(
                  color: Colors.white, // Đổi màu chữ thành màu đỏ
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: onPressHander,
              onLongPress: onLongPressHandler
          ),
        )
    );
  }

  onPressHander()  {
    this.setState(() {
      this.pressedCount++;
    });

    showDialog (
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Message"),
          content: new Text("OK, You just Pressed!"),
          actions: <Widget>[
            TextButton(
              child: Text('Close me!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }

  onLongPressHandler()  {
    this.setState(() {
      this.longPressCount++;
    });
    showDialog (
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Message"),
          content: new Text("Hey, I show up for long press"),
          actions: <Widget>[
            TextButton(
              child: Text('Close me!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }

}