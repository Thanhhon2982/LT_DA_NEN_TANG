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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("BottomAppBar Example"),
        ),
        body: Center(
            child:  Text(
              'Flutter BottomAppBar Example',
            )
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: () {},),
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
              IconButton(icon: Icon(Icons.email), onPressed: () {},),
            ],
          ),
        )
    );
  }
}