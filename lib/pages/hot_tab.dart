import 'package:flutter/cupertino.dart';

import 'see_all_page.dart';

class HotTab extends StatelessWidget {
  const HotTab({
    Key key,
    this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    // 不要使用CupertinoPageScaffold
    // return Center(
    //   child: Text('Hot Tab'),
    // );
    switch (type) {
      case 'watch':
        return ListView(
          children: [
            Center(
              child: CupertinoButton(
                child: Text('tap to see all page'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(SeeAllPage.routeName, arguments: 'watch'),
              ),
            ),
          ],
        );
      case 'listen':
        return ListView(
          children: [
            Center(
              child: CupertinoButton(
                child: Text('tap to see all page'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(SeeAllPage.routeName, arguments: 'listen'),
              ),
            ),
          ],
        );
      case 'read':
        return ListView(
          children: [
            Center(
              child: CupertinoButton(
                child: Text('tap to see all page'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(SeeAllPage.routeName, arguments: 'read'),
              ),
            ),
          ],
        );
      default:
        print('no such type');
    }
  }
}
