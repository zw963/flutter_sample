import 'package:flutter/material.dart';
import 'package:flutter_sample/theme/style.dart';

import 'screens/dashboard/dashboard.dart';

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
