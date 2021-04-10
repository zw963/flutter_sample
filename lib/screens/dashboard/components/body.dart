import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/dashboard/components/leftscreen.dart';
import 'package:flutter_sample/screens/dashboard/components/directionswipecontainer.dart';

PageController dashboardController = PageController(initialPage: 0);

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: dashboardController,
      children: [
        LeftScreen(),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DirectionSwipeContainer(
              pageController: dashboardController,
              pageOnTap: 0,
              color: Colors.blue,
              icon: Icons.arrow_left,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Flutter Sample',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                Container(),
              ],
            ),
            DirectionSwipeContainer(
              pageController: dashboardController,
              pageOnTap: 2,
              color: Colors.green,
              icon: Icons.arrow_right,
            ),
          ],
        ),
      ],
    );
  }
}
