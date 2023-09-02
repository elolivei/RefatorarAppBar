import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MyTabBar({
    super.key,
  });

  @override
  Size get preferredSize {
    return Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      //tabbar at bottom of appbar
      onTap: (index) {
        print("selected tab is $index");
      },
      tabs: [
        Tab(
          text: 'Voar',
          icon: Icon(Icons.flight),
        ),
        Tab(
          text: 'Viajar',
          icon: Icon(Icons.luggage),
        ),
        Tab(
          text: 'Explorar',
          icon: Icon(Icons.explore),
        ), //more tabs here
      ],
    );
  }
}
