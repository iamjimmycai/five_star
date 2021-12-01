import 'package:five_star2/debug.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/see_all_page.dart';

// TODO: 如何精确的控制thumbnail的宽高比，container不行，aspectratio？？？
class ListHorizontalWidget extends StatelessWidget {
  ListHorizontalWidget({
    Key key,
    @required this.title,
    @required this.totalHeight,
    @required this.imageHeight,
    @required this.imageWidth,
  }) : super(key: key);

  final String title;
  final double totalHeight;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text('See All>'),
                onPressed: () => Navigator.of(context)
                    .pushNamed(SeeAllPage.routeName, arguments: 'see all'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: totalHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 36,
            // itemBuilder: (context, index) => Text('hello'),
            itemBuilder: (context, index) => PosterStyleListTile(
              thumbnail: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54, width: 0.5)),
                child: Image.asset(
                  '$index-0.jpg',
                  package: 'shrine_images',
                  fit: BoxFit.fitHeight,
                  // height: 50,
                  // width: 50,
                ),
              ),
              rating: '***** (44)',
              title: 'Flutter 1.0 Launch' * 15,
              imageHeight: imageHeight,
              imageWidth: imageWidth,
            ),
          ),
        )
      ],
    );
  }
}

class PosterStyleListTile extends StatelessWidget {
  const PosterStyleListTile({
    Key key,
    @required this.thumbnail,
    @required this.rating,
    @required this.title,
    @required this.imageHeight,
    @required this.imageWidth,
  }) : super(key: key);

  final Widget thumbnail; // 缩略图
  final String rating;
  final String title;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: imageHeight,
              width: imageWidth,
              child: thumbnail,
            ),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black),
            ),
            Text(
              rating,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridHorizontalWidget extends StatelessWidget {
  const GridHorizontalWidget({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: 36,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
          // return YouTubeStyleListTile(
          //   thumbnail: Container(
          //     decoration: BoxDecoration(
          //         border: Border.all(color: Colors.black54, width: 0.5)),
          //     child: Image.asset(
          //       '22-0.jpg',
          //       package: 'shrine_images',
          //       fit: BoxFit.fitHeight,
          //       // height: 50,
          //       // width: 50,
          //     ),
          //   ),
          //   title: 'Flutter 1.0 Launch' * 15,
          //   rating: '***** (44)',
          //   totalHeight: 50,
          //   imageWidth: 100,
          // );
        },
      ),
    );
  }
}

class YouTubeStyleListTile extends StatelessWidget {
  const YouTubeStyleListTile({
    Key key,
    @required this.thumbnail,
    @required this.rating,
    @required this.title,
    @required this.totalHeight,
    @required this.imageHeight,
    @required this.imageWidth,
  }) : super(key: key);

  final Widget thumbnail; // 缩略图
  final String rating;
  final String title;
  final double totalHeight;
  final double imageHeight;
  final double imageWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: totalHeight,
      width: imageWidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.0,
            child: thumbnail,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0.0, 0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                  Text(
                    rating,
                    // maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CupertinoButton.filled(
                // padding: EdgeInsets.only(right: 12),
                // alignment: Alignment.bottomRight,
                // padding: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
                child: Text('\$1.29'),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
