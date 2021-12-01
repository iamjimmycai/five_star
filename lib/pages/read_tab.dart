import 'package:flutter/cupertino.dart';

import '../styles.dart';
import 'classic_tab.dart';
import 'hot_tab.dart';

class ReadTab extends StatefulWidget {
  @override
  State<ReadTab> createState() => _ReadTabState();
}

class _ReadTabState extends State<ReadTab> {
  final Map<int, Widget> _segments = const <int, Widget>{
    0: Center(child: Text('Hot')),
    1: Center(child: Text('Classic')),
  };
  final Map<int, Widget> _tabs = <int, Widget>{
      0: HotTab(type: 'read'),
    1: ClassicTab(type: 'read'),
  };

  int currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Styles.cupertinoNavigationBarBorder,
        // middle: Text('Read Tab'),
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
