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

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],


        ),
      ),
        bottomSheet: Container(
            height: 55,
            color: Colors.cyan[50],
            child:Column (
              children: [
                Row (
                  children: [
                    Icon(Icons.place),
                    SizedBox(width:5, height:5),
                    Text("199 Valencia St, San Francisco, CA")
                  ],
                ),
                Row (
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width:5, height:5),
                    Text("(415) 339-0942)")
                  ],
                )
              ],
            )
        ),
        persistentFooterButtons :  [
          TextButton.icon(icon: Icon(Icons.map), label: Text(""), onPressed: () {}),
          TextButton.icon(icon: Icon(Icons.view_week), label: Text(""), onPressed: () {}),
        ],
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
        ),

    );

  }
}
