import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BottomAppBar Example"),
        ),
        body: Container(
          width: 300,
          height: 150,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.zero,
                      topLeft: Radius.zero,
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(45)),
                  side: BorderSide(width: 10, color: Colors.blue))),
          child: Center(child: Text("Flutter", style: TextStyle(fontSize: 50))),
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              PopupMenuButton(
                icon: Icon(Icons.share),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Facebook"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Instagram"),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.email),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
