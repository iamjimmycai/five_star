import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import 'see_all_page.dart';

class ClassicTab extends StatelessWidget {
  ClassicTab({
    Key key,
    @required this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    // 不要使用CupertinoPageScaffold
    // return Center(
    //   child: Text('Classic Tab'),
    // );
    switch (type) {
      case 'watch':
        // return ListView(
        //   children: [
        //     Center(
        //       child: CupertinoButton(
        //         child: Text('tap to see all page'),
        //         onPressed: () => Navigator.of(context)
        //             .pushNamed(SeeAllPage.routeName, arguments: 'watch'),
        //       ),
        //     ),
        //   ],
        // );
        // ListView.separated默认最后一个没有divider
        // return Padding(
        //   padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
        //   child: ListView.separated(
        //     itemCount: 3,
        //     itemBuilder: (context, index) {
        //       switch (index) {
        //         case 0:
        //           return ListHorizontalWidget(title: 'Movies');
        //         case 1:
        //           return ListHorizontalWidget(title: 'Televisions');
        //         case 2:
        //           return ListHorizontalWidget(title: 'Shows');
        //         default:
        //       }
        //       return ListHorizontalWidget(title: 'Movies');
        //     },
        //     separatorBuilder: (context, index) => Divider(thickness: 0.8),
        //   ),
        // );
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ListView(
            children: [
              // Center(
              //   child: Text('classic movies'),
              // ),
              ListHorizontalWidget(
                title: 'Movies',
                totalHeight: 190,
                imageHeight: 140,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
              ListHorizontalWidget(
                title: 'Televisions',
                totalHeight: 190,
                imageHeight: 140,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
              ListHorizontalWidget(
                title: 'Shows',
                totalHeight: 190,
                imageHeight: 140,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
              // ListHorizontalFourWidget(title: 'hello'),
            ],
          ),
        );
      case 'listen':
        // return ListView(
        //   children: [
        //     Center(
        //       child: CupertinoButton(
        //         child: Text('tap to see all page'),
        //         onPressed: () => Navigator.of(context)
        //             .pushNamed(SeeAllPage.routeName, arguments: 'listen'),
        //       ),
        //     ),
        //   ],
        // );
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ListView(
            children: [
              // Center(
              //   child: Text('classic movies'),
              // ),
              GridHorizontalWidget(title: 'Songs'),
              Divider(thickness: 0.8),
              ListHorizontalWidget(
                title: 'Albums',
                totalHeight: 150,
                imageHeight: 100,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
              ListHorizontalWidget(
                title: 'Music Videos',
                totalHeight: 140,
                imageHeight: 90,
                imageWidth: 160,
              ),
              Divider(thickness: 0.8),
              // ListHorizontalFourWidget(title: 'hello'),
            ],
          ),
        );
      case 'read':
        // return ListView(
        //   children: [
        //     Center(
        //       child: CupertinoButton(
        //         child: Text('tap to see all page'),
        //         onPressed: () => Navigator.of(context)
        //             .pushNamed(SeeAllPage.routeName, arguments: 'read'),
        //       ),
        //     ),
        //   ],
        // );
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ListView(
            children: [
              // Center(
              //   child: Text('classic movies'),
              // ),
              ListHorizontalWidget(
                title: 'Books',
                totalHeight: 190,
                imageHeight: 140,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
              ListHorizontalWidget(
                title: 'Comics',
                totalHeight: 190,
                imageHeight: 140,
                imageWidth: 100,
              ),
              Divider(thickness: 0.8),
            ],
          ),
        );
      default:
        print('no such type');
    }
  }
}
