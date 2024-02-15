import 'package:flutter/material.dart';
import 'package:meet_up/screens/explore_screen.dart';
import 'package:meet_up/screens/home_screen.dart';
import 'package:meet_up/screens/meetup_screen.dart';
import 'package:meet_up/screens/profile_screen.dart';
import 'package:meet_up/screens/project_screen.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final List<Widget> _pages = [
    const HomeScreen(),
    const ProjectScreen(),
    MeetUpScreen(),
    const ExploreScreen(),
    const ProfileScreen()
  ];

  int _selectedIndex = 2;

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: _selectedPage,
          selectedItemColor:
              Color.fromARGB(209, 7, 58, 47).withOpacity(0.6),
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Project',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.handshake),
              label: 'MeetUp',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_shared),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: 'profile',
            ),
          ]),
    );
  }
}
