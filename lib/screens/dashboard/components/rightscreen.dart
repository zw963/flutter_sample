import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/dashboard/screens/animation.dart';

import 'ripple.dart';

class RightScreen extends StatefulWidget {
  @override
  _RightScreenState createState() => _RightScreenState();
}

class _RightScreenState extends State<RightScreen> {
  final rippleKey = Ripple.createGlobalKey();
  final topRippleEffectKey = RippleEffect.createGlobalKey();
  final bottomRippleEffectKey = RippleEffect.createGlobalKey();

  @override
  Widget build(BuildContext context) => Ripple(
        key: rippleKey,
        child: Container(
          width: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              buildButton(Colors.green, topRippleEffectKey),
            ],
          ),
        ),
      );

  @Deprecated("asd")
  Widget buildButton(Color color, GlobalKey effectKey) => Expanded(
        child: Center(
          child: RippleEffect(
            key: effectKey,
            rippleKey: rippleKey,
            color: Colors.transparent,
            child: RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              elevation: 5.0,
              onPressed: () => RippleEffect.wrap(effectKey, _goToNextPage),
              child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.all(8.0), child: Icon(Icons.code)),
              ),
            ),
          ),
        ),
      );

  Future<void> _goToNextPage() async => Navigator.of(context).push(
        FadeRouteBuilder(
          page: AnimationScreen(),
        ),
      );
}
