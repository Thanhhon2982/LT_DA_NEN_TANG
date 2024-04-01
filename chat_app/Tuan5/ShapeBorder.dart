import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ShapeBorder Demo'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: ShapeDecoration(
              shape: MyCustomShapeBorder(),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Hello, ShapeBorder!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.moveTo(rect.width / 2, rect.top);
    path.lineTo(rect.width, rect.height / 2);
    path.lineTo(rect.width / 2, rect.bottom);
    path.lineTo(rect.left, rect.height / 2);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // Custom painting can be added here if needed.
  }

  @override
  ShapeBorder scale(double t) {
    // Optional: Scaling logic if needed.
    return MyCustomShapeBorder();
  }
}
