import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          '© 2024 Taofeek Akintunde | Taotech Solutions',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
