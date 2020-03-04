import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/dashboard/screens/animation.dart';

class RightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton(context, color: Colors.yellow),
          Expanded(flex: 1, child: Center()),
          buildButton(context, color: Colors.blue),
        ],
      ),
    );
  }

  Widget buildButton(context, {Color color}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            elevation: 5.0,
            child: Container(
              height: 70,
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.code, color: Colors.white)),
            ),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AnimationScreen())),
          ),
        ],
      ),
    );
  }
}
