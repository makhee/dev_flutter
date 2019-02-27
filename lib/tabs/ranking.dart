import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              Icons.report_problem,
              size: 100.0,
              color: Colors.yellow,
            ),
            new Text("준비중")
          ],

        ),
      ),
    );
  }
}