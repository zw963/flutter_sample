import 'package:flutter/cupertino.dart';

class BClass extends StatelessWidget{
  BClass({this.c});

  final CClass? c;

  @override
  Widget build(BuildContext context) {
    return c!;
  }
}

class CClass extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center();
  }

}
