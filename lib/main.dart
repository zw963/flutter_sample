import 'package:flutter/material.dart';
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

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen"),
      ),
    );
  }
}
