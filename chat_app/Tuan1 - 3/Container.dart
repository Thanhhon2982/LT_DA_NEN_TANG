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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container Explemple'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container (
          alignment: Alignment.center,
          foregroundDecoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage('../Ảnh/smile-64.png'),
              fit: BoxFit.none,
            ),
            border: Border.all( color: Colors.black, width: 8),
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.all(30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {},
            child: Text(
              "I am a Long Button",
              style: TextStyle(color: Colors.white),
            ),
          )

      )
    );
  }
}