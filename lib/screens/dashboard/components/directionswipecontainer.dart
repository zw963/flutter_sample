import 'package:flutter/material.dart';

class DirectionSwipeContainer extends StatelessWidget {
  final PageController pageController;
  final int pageOnTap;
  final Color color;
  final IconData icon;

  DirectionSwipeContainer({
    this.pageController,
    this.pageOnTap,
    this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pageController.animateToPage(
          pageOnTap,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      },
      child: Container(
        color: color,
        width: MediaQuery.of(context).size.width / 10,
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
