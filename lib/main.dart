import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/dashboard/dashboard.dart';
import 'package:flutter_sample/theme/style.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterSample',
      theme: appTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
      },
    );
  }
}
