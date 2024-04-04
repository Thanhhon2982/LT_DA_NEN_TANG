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
  MyHomePage({Key ,key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  late ProgrammingLanguage selectedLanguage;

  MyHomePageState() {
    selectedLanguage = ProgrammingLanguage("Default", 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(
            title: Text("Flutter SimpleDialog Example")
        ),
        body: Center (
            child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton (
                    child: Text("Select a Language"),
                    onPressed: () {
                      showMyAlertDialog(context);
                    },
                  ),
                  SizedBox(width:5, height:5),
                  Text("Selected Language: "
                      + (this.selectedLanguage == null ? '?': this.selectedLanguage.name))
                ]
            )
        )
    );
  }

  showMyAlertDialog(BuildContext context) {
    var javascript = ProgrammingLanguage("Javascript", 67.7);
    var htmlCss = ProgrammingLanguage("HTML/CSS", 63.1);
    var sql = ProgrammingLanguage("SQL", 57.4);

    // Create SimpleDialog
    SimpleDialog dialog = SimpleDialog(
      title: const Text('Select a Language:'),
      children: <Widget>[
        SimpleDialogOption(
            onPressed: () {
              // Close and return value
              Navigator.pop(context, javascript);
            },
            child: Text(javascript.name)
        ),
        SimpleDialogOption(
          onPressed: () {
            // Close and return value
            Navigator.pop(context, htmlCss);
          },
          child: Text(htmlCss.name),
        ),
        SimpleDialogOption(
          onPressed: () {
            // Close and return value
            Navigator.pop(context, sql);
          },
          child: Text(sql.name),
        )
      ],
    );

    // Call showDialog function to show dialog.
    showDialog<ProgrammingLanguage>(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        }
    ).then((selectedLanguage) {
      if(selectedLanguage != null) {
        setState(() {
          this.selectedLanguage = selectedLanguage;
        });
      }
    });
  }


}

class ProgrammingLanguage {
  String name;
  double percent;

  ProgrammingLanguage(this.name, this.percent) ;
}