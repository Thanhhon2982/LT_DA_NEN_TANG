import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning',
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
  MyHomePage({Key, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
            title: Text("Flutter TextButton Example",
              style: TextStyle(
              color: Colors.white, // Đổi màu chữ thành màu đỏ
            ),)
        ),
        body: Center (
            child: Column (
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton (
                  child: Text("Default TextButton",
                    style: TextStyle(
                    color: Colors.blue, // Đổi màu chữ thành màu đỏ
                  ),),
                  onPressed: () {},
                ),
                TextButton (
                    child: Text("TextButton With Background and Foreground Color"),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    )
                )
              ],
            )
        )
    );
  }
}