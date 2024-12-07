import 'package:flutter/material.dart';
import 'package:taotech_portfolio/pages/skills_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio - Taofeek Akintunde',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // **Choose either of the following lines for your app's navigation**
      // Drawer-based Navigation
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/projects': (context) => ProjectsPage(),
        '/contact': (context) => ContactPage(),
        '/skills': (context) => SkillsPage(),
      },

      // Bottom Navigation Bar-based App (if you want this instead of Drawer)
      // home: MainNavigation(), // Uncomment this and comment out the "initialRoute" and "routes" above if using BottomNavigationBar
    );
  }
}
