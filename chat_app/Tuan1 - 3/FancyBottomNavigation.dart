import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
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
  int currentPage = 0;
  Widget _myContacts = MyContacts();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();

  @override
  Widget build(BuildContext context) {
    FancyBottomNavigation a;
    return Scaffold(
        appBar: AppBar(
          title: Text("FancyBottomNavigation Example"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          color: Colors.black12,
          child: getPage(),
          constraints: BoxConstraints.expand(),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.contacts, title: "Contacts"),
            TabData(iconData: Icons.mail, title: "Emails"),
            TabData(iconData: Icons.person, title: "Profile")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        )
    );
  }

  Widget getPage() {
    if(this.currentPage == 0) {
      return this._myContacts;
    } else if(this.currentPage==1) {
      return this._myEmails;
    } else {
      return this._myProfile;
    }
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Contacts"));
  }
}

class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Emails"));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile"));
  }
}