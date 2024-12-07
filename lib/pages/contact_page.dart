import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Me',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // Wrap the entire body with Container to set the background color
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade700, Colors.deepPurple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // Use Expanded only for specific sections, content will be inside this Container
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Animated Title Text
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: 1.0,
                  child: Text(
                    'Get in Touch',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Description Text
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: 1.0,
                  child: Text(
                    'Feel free to reach out to me via the methods below.',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Expanded section for email and website, making them take available space
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // Email Tile with Animation
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade500,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: const Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 32,
                          ),
                          title: Text(
                            'Email',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            'akintundetaofiq@gmail.com',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(color: Colors.white70),
                            ),
                          ),
                          onTap: () =>
                              _launchURL('mailto:akintundetaofiq@gmail.com'),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Website Tile with Animation
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade500,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 1,
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: const Icon(
                            Icons.link,
                            color: Colors.white,
                            size: 32,
                          ),
                          title: Text(
                            'Blog Website',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Text(
                            'https://taotechsolutions.com',
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(color: Colors.white70),
                            ),
                          ),
                          onTap: () =>
                              _launchURL('https://www.taotechsolutions.com'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Launch URL helper function
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
