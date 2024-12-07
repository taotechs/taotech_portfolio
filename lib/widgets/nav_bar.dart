import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Portfolio'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/about'),
          child: const Text('About', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/projects'),
          child: const Text('Projects', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/contact'),
          child: const Text('Contact', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
