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

      return Scaffold(
        // AppBar with automaticallyImplyLeading = "true" (Default)
        appBar: AppBar(
            title: Text("AppBar Title"),
            automaticallyImplyLeading: true
        ),
        body: Center(
            child:  Text("Hello World.")
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget> [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'My Drawer',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Gallery'),
              ),
              ListTile(
                title: Text('Slideshow'),
              ),
            ],
          ),
        ),
      );
    }
  }