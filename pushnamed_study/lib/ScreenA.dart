import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                color: Colors.pinkAccent,
                child: Text('Go Screen B'),
                onPressed: (){
                  Navigator.pushNamed(context, '/b');
                }),
            RaisedButton(
                color: Colors.pinkAccent,
                child: Text('Go Screen C'),
                onPressed: (){
                  Navigator.pushNamed(context, '/c');
                }),
          ],
        ),
      ),
    );
  }
}
