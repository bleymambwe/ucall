import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'custom_appbar.dart';
import 'discover_page.dart';
import 'account_page.dart';
import 'jobs_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DiscoverScreen(),
    JobsScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0x90FFDB58),
        fontFamily: 'Josefin_Sans',
      ),
      home: Scaffold(
        bottomNavigationBar: GNav(
          backgroundColor: const Color(0x98FFDB58),
          tabBackgroundGradient: LinearGradient(
            colors: [Color(0x60FFDB58), Color(0x30FFDB58)],
          ),
          activeColor: Colors.brown,
          gap: 10,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedIndex:
              _selectedIndex, // Uncomment this line to set the initial selected tab.
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Discover',
              textStyle: TextStyle(fontSize: 15),
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Jobs',
              textStyle: TextStyle(fontSize: 15),
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Account',
              textStyle: TextStyle(fontSize: 15),
            ),
          ],
        ),
        body: Container(
          color: const Color(0x90FFDB58),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                const CustomAppBar(),
                Expanded(child: _screens[_selectedIndex]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
