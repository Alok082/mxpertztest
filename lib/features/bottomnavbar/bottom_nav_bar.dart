import 'package:flutter/material.dart';
import 'package:mxpertztest/features/bottomnavbar/tempscreen/favourite_screen.dart';
import 'package:mxpertztest/features/bottomnavbar/tempscreen/sharescreen.dart';
import 'package:mxpertztest/features/commentscreen/comment_screen.dart';
import 'package:mxpertztest/features/profile/profilescreen.dart';

import '../homescreen/screens/homescreen.dart';

class Bottomnavigationbar extends StatefulWidget {
  static const id = "Bottomnavigationbar";
  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int _selectedIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          //
          HomeScreen(),
          FavouriteScreen(),
          ShareScreen(),
          CommentScreen(),
          ProfileScreen()

          // locator<SplashScreenController>().islogincheck()
          //     ? My_rides()
          //     : No_Rides_Signin(),
          // Helpscreen(),

          // locator<SplashScreenController>().islogincheck()
          //     ? My_Profile()
          //     : Goto_Signin(), //
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // elevation: 8,

        type: BottomNavigationBarType.fixed,
        // type: ,
        // fixedColor: Colors.green,

        // unselectedLabelStyle: TextStyle(color: Colors.black),
        showUnselectedLabels: true,

        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedFontSize: 17,
        selectedFontSize: 17,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        // iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "",
            activeIcon: ImageIcon(
              AssetImage(
                'assets/icons/homeicon.png',
              ),
              size: 40,
              color: Color.fromARGB(255, 248, 206, 88),
            ),
            // backgroundColor: Color.fromARGB(255, 255, 255, 255),
            icon: ImageIcon(
              AssetImage(
                'assets/icons/homeicon.png',
              ),
              color: Colors.black,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            activeIcon: ImageIcon(
              AssetImage(
                'assets/icons/favourite.png',
              ),
              color: Color.fromARGB(255, 248, 206, 88),
              size: 40,
            ),
            icon: ImageIcon(
              AssetImage(
                'assets/icons/favourite.png',
              ),
              color: Colors.black,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            activeIcon: ImageIcon(
              AssetImage(
                'assets/icons/share.png',
              ),
              color: Color.fromARGB(255, 248, 206, 88),
              size: 40,
            ),
            icon: ImageIcon(
              AssetImage(
                'assets/icons/share.png',
              ),
              color: Colors.black,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            activeIcon: ImageIcon(
              AssetImage(
                'assets/icons/chat.png',
              ),
              color: Color.fromARGB(255, 248, 206, 88),
              size: 40,
            ),
            icon: ImageIcon(
              AssetImage('assets/icons/chat.png'),
              color: Colors.black,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.person_2_outlined,
                size: 20,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              activeIcon: Icon(
                Icons.person_2_outlined,
                size: 22,
                color: Color.fromARGB(255, 248, 206, 88),
              )),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 68, 68),
        onTap: _onItemTapped,
      ),
    );
  }
}
