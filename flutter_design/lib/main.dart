import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Debug 표시 제거
      title: 'Pikachu',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text("Pikachu"),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0, //appbar의 입체감을 없애줌
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //글자들의 왼쪽정렬
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/pikachu.png'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text("NAME",
            style: TextStyle(
              color: Colors.white,
                letterSpacing: 2.0, //철자간의 간격
            ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text('Pikachu',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("MONSTER POWER LEVEL",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0, //철자간의 간격
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text('10',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('best Poketmon ever',
                  style: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('yellow monter',
                  style: TextStyle(
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
