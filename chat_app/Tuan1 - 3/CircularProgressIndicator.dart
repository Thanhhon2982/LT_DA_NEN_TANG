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
        title: Text('Flutter CircularProgressIndicator Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child:  Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    value: this._value,
                    backgroundColor: Colors.cyanAccent,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
                Text(
                  "Percent: " + (this._value * 100).round().toString()+ "%",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Màu nền xanh
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // Độ cong của góc, bạn có thể điều chỉnh theo ý muốn
                    ),
                  ),
                  onPressed: _working ? null : startWorking,
                  child: Text(
                    "Start",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Màu nền xanh
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4), // Độ cong của góc, bạn có thể điều chỉnh theo ý muốn
                    ),
                  ),
                  onPressed: !_working ? null : stopWorking,
                  child: Text(
                    "Stop",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ]
          )
      ),
    );
  }
}