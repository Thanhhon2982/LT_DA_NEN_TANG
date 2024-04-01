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
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Card Example"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Card (
        margin: EdgeInsets.all(10),
        color: Colors.green[100],
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon (
                  Icons.album,
                  color: Colors.cyan,
                  size: 45
              ),
              title: Text(
                "Let's Talk About Love",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Modern Talking Album'),
            ),
          ],
        ),
      ),
    );
  }
}