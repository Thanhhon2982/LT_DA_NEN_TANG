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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.thumb_up),
              label: Text("Like"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // returns ButtonStyle
                shape: StadiumBorder(
                    side: BorderSide(
                        width: 10,
                        color: Colors.blue) // Not Working (Read Note).
                    ),
              ),
            ),
// With ButtonStyle.side
            ElevatedButton.icon(
              icon: Icon(Icons.thumb_up),
              label: Text("Like"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // returns ButtonStyle
                side: BorderSide(color: Colors.green, width: 3),
                shape: StadiumBorder(
                    side: BorderSide(
                        width: 10,
                        color: Colors.blue) // Not Working (Read Note).
                    ),
              ),
            ),
            OutlinedButton.icon(
              icon: Icon(Icons.star_outline),
              label: Text("OutlinedButton"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // returns ButtonStyle
                shape: StadiumBorder(
                    side: BorderSide(
                        width: 10,
                        color: Colors.blue) // Not Working (Read Note).
                    ),
              ),
            ),
// With ButtonStyle.side
            OutlinedButton.icon(
              icon: Icon(Icons.star_outline),
              label: Text("OutlinedButton"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // returns ButtonStyle
                side: BorderSide(width: 2.0, color: Colors.green),
                shape: StadiumBorder(
                    side: BorderSide(
                        width: 10,
                        color: Colors.blue) // Not Working (Read Note).
                    ),
              ),
            ),
            ElevatedButton(
              child: Text("ElevatedButton 2"),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.black26;
                    }
                    return Colors.cyan;
                  },
                ),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                elevation: MaterialStateProperty.resolveWith<double>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed) ||
                        states.contains(MaterialState.disabled)) {
                      return 0;
                    }
                    return 10;
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _addChild();
        },
      ),
    );
  }
}
