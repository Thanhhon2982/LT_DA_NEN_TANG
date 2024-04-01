import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter SnackBar Example'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show SnackBar',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {
            _showSnackBarMsgDeleted(context);
          },
        ),
      ),
    );
  }

  void _showSnackBarMsgDeleted(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Message is deleted!'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            _showSnackBarMsgRestored(context);
          },
        ),
      ),
    );
  }

  void _showSnackBarMsgRestored(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Message is restored!'),
      ),
    );
  }
}
