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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
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
  double _value = 0;
  bool _working = false;

  void startWorking()  async {
    this.setState(() {
      this._working = true;
      this._value = 0;
    });
    for(int i = 0; i< 10; i++) {
      if(!this._working)  {
        break;
      }
      await Future.delayed(Duration(seconds: 1));
      this.setState(() {
        this._value += 0.1;
      });
    }
    this.setState(() {
      this._working = false;
    });
  }

  void stopWorking() {
    this.setState(() {
      this._working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter LinearProgressIndicator Example'),
      ),
      body: Center(
          child:  Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(
                  width: 250,
                  height: 20,
                  child: LinearProgressIndicator(
                    value: this._value,
                    backgroundColor: Colors.cyan[100],
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                SizedBox(width:10, height: 10),
                Text(
                  "Percent: " + (this._value * 100).round().toString()+ "%",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                    child: Text("Start"),
                    onPressed: this._working? null: () {
                      this.startWorking();
                    }
                ),
                ElevatedButton(
                    child: Text("Stop"),
                    onPressed: !this._working? null: () {
                      this.stopWorking();
                    }
                )
              ]
          )
      ),
    );
  }
}