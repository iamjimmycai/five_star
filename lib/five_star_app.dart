import 'package:flutter/cupertino.dart';

import 'pages/listen_tab.dart';
import 'pages/me_tab.dart';
import 'pages/read_tab.dart';
import 'pages/search_tab.dart';
import 'pages/watch_tab.dart';
import 'pages/see_all_page.dart';
import 'pages/item_detail_page.dart';
import 'pages/celebrity_page.dart';
import 'styles.dart';

class FiveStarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Five Star App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        border: Styles.cupertinoTabBarBorder,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_rectangle),
            label: 'Watch',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.music_note_2),
            label: 'Listen',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_fill),
            label: 'Read',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_circle),
            label: 'Me',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        // 由于使用了CupertinoTabView，所以原先放在FiveStarApp里面的routes必须转移到CupertinoTabView
        // CupertinoTabView可以在页面切换时保持BottomNavigationBar
        return CupertinoTabView(
          routes: {
            SeeAllPage.routeName: (context) => SeeAllPage(),
            ItemDetailPage.routeName: (context) => ItemDetailPage(),
            CelebrityPage.routeName: (context) => CelebrityPage(),
          },
          builder: (BuildContext context) {
            switch (index) {
              case 0:
                return WatchTab();
              case 1:
                return ListenTab();
              case 2:
                return ReadTab();
              case 3:
                return SearchTab();
              case 4:
                return MeTab();
              default:
                return WatchTab();
            }
          },
        );
      },
    );
  }
}
