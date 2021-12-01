import 'package:flutter/cupertino.dart';

class CelebrityPage extends StatelessWidget {
  static const routeName = '/celebrity';
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Celebrity Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('back to home'),
          onPressed: () =>
              Navigator.of(context).popUntil(ModalRoute.withName('/')),
        ),
      ),
    );
  }
}
