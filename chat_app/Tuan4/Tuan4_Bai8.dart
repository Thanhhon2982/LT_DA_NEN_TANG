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
    return Scaffold (
        appBar: AppBar(
            title: Text("Flutter Spacer Example"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center (
            child: Row (
                children: [
                  ElevatedButton(child: Text("B1"), onPressed:(){}),
                  Expanded(
                    child: Icon(Icons.ac_unit, size: 32, color: Colors.red),
                  ),
                  ElevatedButton(
                      child: Text("B2"),
                      onPressed:(){},
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(50, 100))
                      )
                  ),
                  Expanded(
                    child: Icon(Icons.add_circle, size: 96, color: Colors.green),
                  ),
                  ElevatedButton(child: Text("Btn 3"), onPressed:(){}),
                ]
            )
        )
    );
  }
}
