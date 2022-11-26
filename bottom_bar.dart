import 'package:bokking_details/screen/qr_code.dart';
import 'package:bokking_details/screen/search_screen.dart';
import 'package:bokking_details/screen/tickits.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'Profile_page.dart';
import 'home_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    // HomePage(),
    DemoMWDrawerScreen4(),
    SearchScreen(),
    TicketsPage(),
    ProfilePage(),

  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF526480),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_home_regular,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_search_regular,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_ticket_regular,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_person_regular,
                size: 30,

              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                FluentSystemIcons.ic_fluent_page_fit_filled,
                size: 30,
              ),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_page_regular),
              label: "home"),

        ],
      ),
    );
  }
}
