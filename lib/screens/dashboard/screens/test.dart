import 'package:flutter/cupertino.dart';

import 'test2.dart';

const String CONST = 'c';

enum B {
  BLA,
  BLO,
}

class AClass extends StatelessWidget {
  final int test = 2;

 @Deprecated(
    'Use dependOnInheritedElement instead. '
    'This feature was deprecated after v1.12.1.'
  )
  bool get test2 => test != null;

  @override
  Widget build(BuildContext context) {
    return BClass(
      c: CClass(),
    );
  }
}

