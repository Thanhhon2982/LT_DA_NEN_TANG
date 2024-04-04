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
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/details': (BuildContext context) => Details(),
        '/about': (BuildContext context) => About(),
      },
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to Details Page'),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/details', arguments: 'Data from Home');
              },
            ),
            ElevatedButton(
              child: Text('Go to About Page'),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/about', arguments: 'Data from Home');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Details Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data Received: ${data ?? "No data"}'),
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}

class About extends StatelessWidget {
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text("Title of About Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data Received: ${data ?? "No data"}'),
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan[100],
    );
  }
}
