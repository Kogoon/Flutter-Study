import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar",
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Message'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            flutterToast();
          },
          child: Text('Toast'),
          color: Colors.blue,
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: 'Flutter Toast Studying',
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT,);
}
