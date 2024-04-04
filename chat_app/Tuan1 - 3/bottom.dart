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
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true,
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

      return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              title: Text('Flutter AppBar Example'),
            ),
            body: TabBarView (
              children: [
                Center(child: Text("Car")),
                Center(child: Text("Transit")),
                Center(child: Text("Bike"))
              ],
            ),
          )
      );
    }
  }