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
  List<Widget> _children = [];
  int idx = 0;

  void initState()  {
    super.initState();

    this._children = [
      ElevatedButton(
          key: Key(this.idx.toString()),
          child: Text("Btn " + idx.toString()),
          onPressed: (){}
      )
    ];
  }

  void addChildHandler()  {
    this.idx++;
    this.setState(() {
      var newChild = ElevatedButton(
          key: Key(this.idx.toString()),
          child: Text("Btn " + idx.toString()),
          onPressed: (){}
      );
      this._children.add(newChild);
    });
  }




  @override
  Widget build(BuildContext context) {
    this._children = this._children == null? [] : List.from(this._children);
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Row Example")
      ),
      body: Center(
          child: Row (
              children:  this._children
          )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: ()  {
            this.addChildHandler();
          }
      ),
    );
  }
}