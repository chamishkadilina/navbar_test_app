import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navbar_test_app/pages/achievement_screen.dart';
import 'package:navbar_test_app/pages/home_screen.dart';
import 'package:navbar_test_app/pages/setting_screen.dart';
import 'package:navbar_test_app/pages/static_screen.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: GNav(
            backgroundColor: Colors.black,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            color: Colors.white,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.bar_chart,
                text: 'Statics',
              ),
              GButton(
                icon: Icons.auto_graph_sharp,
                text: 'Badges',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
      body: const [
        HomeScreen(),
        StaticScreen(),
        AchievementScreen(),
        SettingScreen(),
      ][currentPageIndex],
    );
  }
}
