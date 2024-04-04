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
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Positioned(
                top: 100,
                bottom: 70,
                child: Container(
                  width: 200,
                  height: 30, // !!
                  color: Colors.green,
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addChild();
        },
      ),
    );
  }
}
