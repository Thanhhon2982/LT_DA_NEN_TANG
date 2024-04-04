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
        appBar: AppBar(
            title: IconTitleWidget()
        ),
        body: Center(
            child: Text(
              'Flutter AppBar Tutorial',
            )
        ),
      );
    }
  }
class IconTitleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    imageCache.clear();
    return Row (
      mainAxisAlignment: MainAxisAlignment.center, // Centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // Centers vertically
      children: <Widget>[
        Icon(Icons.train),
        Icon(Icons.place),
        // The SizedBox provides an immediate spacing between the widgets
        SizedBox (
          width: 3,
        ),
        Text(
          "Place",
        )
      ],
    );
  }
}