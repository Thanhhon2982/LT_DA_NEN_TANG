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
      title: "o7planning.org",
      debugShowCheckedModeBanner: false,
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
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Click the floating action button to show bottom sheet.',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() =>  _showMyBottomSheet(context),
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen[200],
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton.icon(icon: Icon(Icons.home), label: Text(""), onPressed: () {},),
              TextButton.icon(icon: Icon(Icons.email), label: Text(""), onPressed: () {},),
            ],
          ),
        )
    );
  }


  void _showMyBottomSheet(BuildContext context) {
    // Call showModalBottomSheet(), this function open a Dialog
    // and return Future object.
    showModalBottomSheet (
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height  * 0.4,
            child: Center(
              child: Text("Welcome to o7planning.org!"),
            ),
          );
        }
    );
  }
}