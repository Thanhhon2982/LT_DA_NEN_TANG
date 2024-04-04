import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'align'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _children = [];
  int idx = 0;

  @override
  void initState() {
    super.initState();
    _addChild();
  }

  void _addChild() {
    setState(() {
      var newChild = ElevatedButton(
        key: Key(idx.toString()),
        child: Text("Button " + idx.toString()),
        onPressed: () {},
      );
      _children.add(newChild);
      idx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Column Example")),
      body: Container(
          color: Colors.greenAccent,
          padding: EdgeInsets.symmetric(horizontal: 120, vertical: 50),
          child: ElevatedButton(child: Text("Button"), onPressed: () {})),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addChild();
        },
      ),
    );
  }
}
