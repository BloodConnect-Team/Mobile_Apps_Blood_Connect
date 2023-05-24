import 'package:blood_connect/color/color.dart';
import 'package:blood_connect/screens/pages/home_page_screen.dart';
import 'package:blood_connect/screens/pages/menu/blood_screen.dart';
import 'package:blood_connect/screens/pages/menu/profile_screen.dart';
import 'package:blood_connect/screens/pages/menu/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedBottom = 0;

  final List<Widget> _listPage = [
    HomePageScreen(),
    SearchScreen(),
    BloodScreen(),
    ProfileScreen()
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedBottom = index;
    });
  }

  // void _onItemPage(int i) {
  //   _pageController.jumpToPage(i);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_selectedBottom],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(
          color: Colors.blueGrey,
        ),
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bloodtype), label: "Blood"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: "Profil")
        ],
        selectedItemColor: PrimaryColor,
        onTap: onItemTap,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedBottom,
        showUnselectedLabels: false,
      ),
    );
  }
}
