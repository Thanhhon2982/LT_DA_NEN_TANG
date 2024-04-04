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
  int carClick = 0;
  int transitClick = 0;
  int bikeClick = 0;
  @override
  Widget build(BuildContext context) {
    EdgeInsets a2; EdgeInsetsDirectional a;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: createTabBar(),
            title: Text('Flutter TabBar Example'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Car")),
              Center(child: Text("Transit")),
              Center(child: Text("Bike"))
            ],
          ),
        )
    );
  }

  TabBar createTabBar()  {
    return TabBar(
        isScrollable: true,
        labelStyle: TextStyle(fontSize: 20),
        tabs: [
          Text("Car " + this.carClick.toString()),
          Text("Transit " + this.transitClick.toString()),
          Text("Bike " + this.bikeClick.toString())
        ],
        onTap: (index) {
          this.onTapHandler(index);
        }
    );
  }

  void onTapHandler(int index)  {
    setState(()  {
      switch(index){
        case 0:
          carClick++;
          break;
        case 1:
          transitClick++;
          break;
        case 2:
          bikeClick++;
          break;
      }
    });
  }

}