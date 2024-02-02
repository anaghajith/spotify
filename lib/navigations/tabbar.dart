import 'package:flutter/material.dart';
import 'package:spotify/views/home.dart';
import 'package:spotify/views/library.dart';
import 'package:spotify/views/search.dart';

class Tabbar extends StatefulWidget {
  // const Tabbar({super.key});
  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (index) {
          setState(() {
            this.selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
            ),
            label: "Your Library",
          ),
        ],
      ),
      body: Stack(children: [
        renderView(0, Home(),),
        renderView(1,Search(),),
        renderView(2,Library(),),
      ]),
    );
  }

  IgnorePointer renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: selectedTab != tabIndex,
      child: Opacity(
        opacity: selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
