import 'package:flutter/material.dart';

class PrintConstraints extends StatelessWidget {
  const PrintConstraints({
    Key key,
    this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        return child;
      },
    );
  }
}
