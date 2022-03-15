import 'dart:convert';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final window = await DesktopMultiWindow.createWindow(jsonEncode({
              'args1': 'Sub window',
              'args2': 100,
              'args3': true,
              'bussiness': 'bussiness_test',
            }));
            window
              ..setFrame(const Offset(0, 0) & const Size(1280, 720))
              ..center()
              ..setTitle('Another window')
              ..show();
          },
          child: Text('click me'),
        ),
      ),
    );
  }
}
