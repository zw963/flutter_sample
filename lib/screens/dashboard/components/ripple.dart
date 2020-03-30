import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rect_getter/rect_getter.dart';

class Ripple extends StatefulWidget {
  Ripple({@required this.child});

  final Widget child;

  @override
  RippleState createState() => RippleState();
}

class RippleState extends State<Ripple> {
  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 300);
  final GlobalKey key = RectGetter.createGlobalKey();
  Rect rect;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          widget.child,
          _buildRipple(),
        ],
      );

  Widget _buildRipple() {
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

  void updateColor(Color color) {
    setState(() {
      this.color = color;
    });
  }
}

class RippleEffect extends StatefulWidget {
  RippleEffect({@required this.child, @required this.color});

  final rippleKey = new GlobalKey<RippleState>().currentState;

  final Widget child;
  final Color color;

  @override
  RippleEffectState createState() => RippleEffectState();

}

class RippleEffectState extends State<RippleEffect> {
  final key = RectGetter.createGlobalKey();

  @override
  Widget build(BuildContext context) {
    return RectGetter(
      child: widget.child,
      key: key,
    );
  }

  Future<void> start() async {
    debugPrint('clicked');
  }
}
