import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/screen1/screen1.dart';
import 'package:flutter_sample/theme/style.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterSample',
      theme: appTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => Screen1(),
      },
    );
  }
}
