// solve 2
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Center(
          child: RaisedButton(
            child: Text('Go Screen A'),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => ScreenA())),
            //push함수가 MaterialApp의 child context를 사용하게 하거나
            //MaterialApp 밑에서 새로운 context를 새로운 context를 할당할 수 있게 새로운 builder 생성
          ),
        ),
      ),
    );
  }
}


class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Text('Hi There!'),
      ),
    );
  }
}

/*
solve 1

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Go Screen A'),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => ScreenA())),
        //push함수가 MaterialApp의 child context를 사용하게 하거나
        //MaterialApp 밑에서 새로운 context를 새로운 context를 할당할 수 있게 새로운 builder 생성
      ),
    );
  }
}



class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen A'),
      ),
      body: Center(
        child: Text('Hi There!'),
      ),
    );
  }
}

*/
/*
======== Exception caught by gesture ===============================================================
The following assertion was thrown while handling a gesture:
Navigator operation requested with a context that does not include a Navigator.

The context used to push or pop routes from the Navigator must be that of a widget that is a descendant of a Navigator widget.
When the exception was thrown, this was the stack:
#0      Navigator.of.<anonymous closure> (package:flutter/src/widgets/navigator.dart:2184:9)
#1      Navigator.of (package:flutter/src/widgets/navigator.dart:2191:6)
#2      Navigator.push (package:flutter/src/widgets/navigator.dart:1795:22)
#3      MyApp.build.<anonymous closure> (package:flutter_quiz/main.dart:12:38)
#4      _InkResponseState._handleTap (package:flutter/src/material/ink_well.dart:993:19)
...
Handler: "onTap"
Recognizer: TapGestureRecognizer#d7a0e
  debugOwner: GestureDetector
  state: possible
  won arena
  finalPosition: Offset(177.5, 328.5)
  finalLocalPosition: Offset(52.5, 26.5)
  button: 1
  sent tap down
====================================================================================================
 */