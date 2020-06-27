import 'package:flutter/material.dart';

class LeftScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          child: Text('Test'),
          onPressed: () {
            print('test');
          },
          color: Colors.blue,
        )
      ],
    );
  }
}
