import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> leftAnimation;
  Animation<Offset> rightAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    leftAnimation = Tween<Offset>(
      begin: Offset(-1.5, 0),
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeOutExpo,
    ));

    rightAnimation = Tween<Offset>(
      begin: Offset(4.5, 0),
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeOutExpo,
    ));

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SlideTransition(
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100,
            ),
            position: leftAnimation,
          ),
          SlideTransition(
            child: Icon(
              Icons.map,
              color: Colors.blue,
              size: 100,
            ),
            position: rightAnimation,
          ),
          SlideTransition(
            child: Icon(
              Icons.sms,
              color: Colors.purple,
              size: 100,
            ),
            position: leftAnimation,
          ),
        ],
      ),
    );
  }
}
