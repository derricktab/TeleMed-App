// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:medical_adviser/screens/Home_Screen.dart';
import 'package:medical_adviser/screens/messages_screen.dart';
import 'package:medical_adviser/screens/schedule_screen.dart';
import 'package:medical_adviser/screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  final int selectedIndex;
  const NavBarRoots({
    Key? key,
    this.selectedIndex = 0,
  }) : super(key: key);

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    //Home Screen
    const HomeScreen(),
    //Messages Screen
    MessagesScreen(),
    //Schedule Screen
    const ScheduleScreen(),
    //Setting Screen
    const SettingsScreen(),
  ];

  setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    setSelectedIndex(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Schedule"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
