import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import 'celebrity_page.dart';

class ItemDetailPage extends StatelessWidget {
  static const routeName = '/item-detail';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Styles.cupertinoNavigationBarBorder,
        middle: Text('Item Detail Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('tap to celebrity page'),
          onPressed: () =>
              Navigator.of(context).pushNamed(CelebrityPage.routeName),
        ),
      ),
    );
  }
}
