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
            title: Text("AppBar Title"),
            actions: <Widget> [
              IconButton(
                icon: Icon(Icons.file_upload),
                onPressed: () => {
                  print("Click on upload button")
                },
              ),
              IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () => {
                    print("Click on settings button")
                  }
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
              )
            ]
        ),
        body: Center(
            child: Text(
              'Flutter AppBar Tutorial',
            )
        ),
      );
    }
  }