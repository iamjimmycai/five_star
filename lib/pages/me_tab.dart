import 'package:flutter/cupertino.dart';

class MeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text('tap to see all page'),
        ),
      ),
    );
  }
}
