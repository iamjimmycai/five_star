import 'package:flutter/cupertino.dart';

import 'classic_tab.dart';
import 'hot_tab.dart';

class WatchTab extends StatefulWidget {
  @override
  State<WatchTab> createState() => _WatchTabState();
}

class _WatchTabState extends State<WatchTab> {
  final Map<int, Widget> _segments = const <int, Widget>{
    0: Center(child: Text('Hot')),
    1: Center(child: Text('Classic')),
  };
  final Map<int, Widget> _tabs = <int, Widget>{
    0: HotTab(type: 'watch'),
    1: ClassicTab(type: 'watch'),
  };

  int currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // border: Styles.cupertinoNavigationBarBorder,
        // middle: Text('Watch Tab'),
        middle: CupertinoSlidingSegmentedControl<int>(
          children: _segments,
          onValueChanged: (int newValue) {
            setState(() {
              currentValue = newValue;
            });
          },
          groupValue: currentValue,
        ),
      ),
      // child: Center(
      //   child: CupertinoButton(
      //     child: Text('tap to see all page'),
      //     onPressed: () =>
      //         Navigator.of(context).pushNamed(SeeAllPage.routeName),
      //   ),
      // ),
      child: _tabs[currentValue],
    );
  }
}
