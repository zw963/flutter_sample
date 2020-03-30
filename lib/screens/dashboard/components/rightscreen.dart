import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/dashboard/screens/animation.dart';
import 'package:rect_getter/rect_getter.dart';

import 'ripple.dart';

class RightScreen extends StatefulWidget {
  @override
  _RightScreenState createState() => _RightScreenState();
}

class _RightScreenState extends State<RightScreen> {
  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 300);
  final GlobalKey bottomButtonKey = RectGetter.createGlobalKey();

  Rect bottomButtonRect;

  @override
  Widget build(BuildContext context) => Ripple(
        child: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              Spacer(),
              buildButton(),
            ],
          ),
        ),
      );

  // Widget buildButton() => Expanded(
  //       child: Center(
  //         child: RectGetter(
  //           key: bottomButtonKey,
  //           child: RaisedButton(
  //             color: Colors.blue,
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.all(Radius.circular(10.0))),
  //             elevation: 5.0,
  //             onPressed: onTap,
  //             child: Container(
  //               height: 70,
  //               child: Padding(
  //                   padding: EdgeInsets.all(8.0),
  //                   child: Icon(Icons.code, color: Colors.white)),
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
 
  Widget buildButton() => Expanded(
        child: Center(
          child: RippleEffect(
            color: Colors.blue,
            child: RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 5.0,
              onPressed: onTap,
              child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.code, color: Colors.white)),
              ),
            ),
          ),
        ),
      );

  Future<void> onTap() async {
    // setState(() {
    //   bottomButtonRect = RectGetter.getRectFromKey(bottomButtonKey);
    // });
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   setState(() => bottomButtonRect = bottomButtonRect
    //       .inflate(1.3 * MediaQuery.of(context).size.longestSide));
    //   Future.delayed(animationDuration + delay, _goToNextPage);
    // });
    debugPrint('clicked child');
  }

  void _goToNextPage() => Navigator.of(context)
      .push(
        FadeRouteBuilder(
          page: AnimationScreen(),
        ),
      )
      .then((_) => setState(() => bottomButtonRect = null));

  Widget _ripple({Rect rect, Color color}) {
    if (rect == null) {
      return Container();
    }

    return AnimatedPositioned(
      left: rect.left,
      top: rect.top,
      right: MediaQuery.of(context).size.width - rect.right,
      bottom: MediaQuery.of(context).size.height - rect.bottom,
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
      duration: animationDuration,
    );
  }
}

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({@required this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) {
            return FadeTransition(opacity: animation1, child: child);
          },
        );
}
