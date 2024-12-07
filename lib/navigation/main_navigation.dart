import 'package:flutter/material.dart';
import 'package:taotech_portfolio/pages/about_page.dart';
import 'package:taotech_portfolio/pages/contact_page.dart';
import 'package:taotech_portfolio/pages/projects_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    AboutPage(),
    ProjectsPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio - Taofeek Akintunde'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Projects',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
