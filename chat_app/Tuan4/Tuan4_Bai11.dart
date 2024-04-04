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

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePage> {

  String imageUrl = "https://file-not-found";
  bool _loadImageError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
            title: Text("Flutter CircleAvatar Example")
        ),
        body: Center (
            child: CircleAvatar(
                radius: 100,
                backgroundImage: this._loadImageError? null: NetworkImage(this.imageUrl),
                onBackgroundImageError: this._loadImageError? null:
                    (Object error, StackTrace? stackTrace) {
                  print("Error loading image! " + error.toString());
                  this.setState(() {
                    this._loadImageError = true;
                  });
                },
                backgroundColor: _loadImageError ? Colors.blue : Colors.transparent,
                child: this._loadImageError? Text("Error loading image!",style: TextStyle(color: Colors.white)) : null,
            )
        )
    );
  }
}
