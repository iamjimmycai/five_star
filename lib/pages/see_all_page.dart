import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import 'item_detail_page.dart';

class SeeAllPage extends StatelessWidget {
  static const routeName = '/see-all';

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments as String;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Styles.cupertinoNavigationBarBorder,
        // middle: Text('See All Page'),
        middle: Text(title),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('tap to item detail page'),
          onPressed: () =>
              Navigator.of(context).pushNamed(ItemDetailPage.routeName),
        ),
      ),
    );
  }
}
