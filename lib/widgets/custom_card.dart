import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  const CustomCard({
    required this.title,
    required this.description,
    required this.link,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () => launchUrl(Uri.parse(link)),
                child: const Text(
                  'View Project',
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
