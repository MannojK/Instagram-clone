import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/Api/api_screen.dart';
import 'package:instagram/Practice/home.dart';
import 'package:instagram/newOne/Fbuilder.dart';
import 'package:instagram/newOne/pics.dart';

import 'package:instagram/screens/homepage.dart';
import 'package:instagram/screens/homescreen.dart';
import 'package:instagram/screens/pagebar.dart';

import '../newOne/chatgpt.dart';

class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int _selectedIndex = 0;
  static final List _widgetOptions = [
    // const Text(
    //   "Home",
    //   style: TextStyle(color: Colors.white),
    // ),
    const fBuilder(),
    const Text(
      "Search",
      style: TextStyle(color: Colors.white),
    ),
    const Text(
      "Post",
      style: TextStyle(color: Colors.white),
    ),
    const Text(
      "Reels",
      style: TextStyle(color: Colors.white),
    ),
    const Text(
      "Profile",
      style: TextStyle(color: Colors.white),
    ),
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
          elevation: 0,
          onTap: _onTapped,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            //  ****         HOME

            BottomNavigationBarItem(
                icon: Icon(
                  FluentIcons.home_20_regular,
                  color: Colors.white,
                ),
                label: "search",
                activeIcon: Icon(
                  FluentIcons.home_20_filled,
                  color: Colors.white,
                )
                // activeIcon: ImageIcon(
                //   AssetImage(
                //     "assets/home.png",
                //   ),
                //   color: Colors.white,
                //   size: 22,
                // ),
                ),

            //  ****        SEARCH

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/search.png",
                ),
                color: Colors.white,
                size: 55,
              ),
              label: "video",
              activeIcon: ImageIcon(
                AssetImage(
                  "assets/search.png",
                ),
                color: Colors.white,
                size: 59,
              ),
            ),
            //  ****       POST

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/post.png",
                ),
                color: Colors.white,
                size: 20,
              ),
              label: "Home",
              activeIcon: ImageIcon(
                AssetImage(
                  "assets/post.png",
                ),
                color: Colors.white,
                size: 20,
              ),
            ),

            //  ****        VIDEO

            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/video.png",
                ),
                color: Colors.white,
                size: 20,
              ),
              label: "Home",
              activeIcon: ImageIcon(
                AssetImage(
                  "assets/videoFill.png",
                ),
                color: Colors.white,
                size: 20,
              ),
            ),

            //  ****       PROFILE
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.jpeg"),
                  radius: 18,
                ),
                label: "Home",
                activeIcon: CircleAvatar(
                  radius: 19,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/profile.jpeg"),
                  ),
                )),
          ]),
    );
  }
}
