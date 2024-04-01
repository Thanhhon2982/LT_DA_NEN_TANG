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
      title: 'Title of Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
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
    EdgeInsets a2; EdgeInsetsDirectional a;
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: createTabBar(),
            title: Text('Flutter TabBar Example'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Car")),
              Center(child: Text("Transit")),
              Center(child: Text("Bike")),
              Center(child: Text("Boat")),
              Center(child: Text("Railway")),
              Center(child: Text("Bus"))
            ],
          ),
        )
    );
  }

  TabBar createTabBar()  {
    return TabBar(
      tabs: [
        Row (children: [Icon(Icons.directions_car), SizedBox(width:5), Text("Car")]),
        Row (children: [Icon(Icons.directions_transit), SizedBox(width:5), Text("Transit")]),
        Row (children: [Icon(Icons.directions_bike), SizedBox(width:5), Text("Bike")]),
        Row (children: [Icon(Icons.directions_boat), SizedBox(width:5), Text("Boat")]),
        Row (children: [Icon(Icons.directions_railway), SizedBox(width:5), Text("Railway")]),
        Row (children: [Icon(Icons.directions_bus), SizedBox(width:5), Text("Bus")]),
      ],
      isScrollable: true,
    );
  }
}