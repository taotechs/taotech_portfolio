import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get in Touch',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Feel free to reach out to me via the methods below.'),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('taotechsolutions@example.com'),
              onTap: () =>
                  launchUrl(Uri.parse('mailto:taotechsolutions@example.com')),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('Website'),
              subtitle: Text('https://taotechsolutions.com'),
              onTap: () => launchUrl(Uri.parse('https://taotechsolutions.com')),
            ),
          ],
        ),
      ),
    );
  }
}
