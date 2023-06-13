import 'package:blood_connect/screens/pages/home_page_screen.dart';
import 'package:blood_connect/screens/pages/menu/blood_screen.dart';
import 'package:blood_connect/screens/pages/menu/profile_screen.dart';
import 'package:blood_connect/screens/pages/menu/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedBottom = 0;

  final List<Widget> _listPage = [
    const HomePageScreen(),
    const SearchScreen(),
    const BloodScreen(),
    const ProfileScreen()
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedBottom = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_selectedBottom],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
            gap: 5,
            tabBorderRadius: 30,
            haptic: true,
            color: Colors.redAccent,
            activeColor: Colors.redAccent,
            backgroundColor: Colors.white,
            tabBackgroundColor: Colors.grey,
            iconSize: 25,
            padding: const EdgeInsets.all(10),
            onTabChange: (value) {
              onItemTap(value);
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(icon: Icons.search, text: 'Search'),
              GButton(icon: Icons.bloodtype_sharp, text: 'Blood'),
              GButton(
                icon: Icons.person,
                text: 'Profil',
              )
            ]),
      ),
    );
  }
}
