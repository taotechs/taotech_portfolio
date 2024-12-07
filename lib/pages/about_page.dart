import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taotech_portfolio/pages/contact_page.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'About Me',
          style: GoogleFonts.lato(
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade700, Colors.deepPurple.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Animated Profile Image
                Center(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/taotech.jpg'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Title
                Center(
                  child: Text(
                    'Taofeek Akintunde',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                Center(
                  child: Text(
                    'Software Engineer | Mobile App Developer',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // Introduction
                Text(
                  'About Me',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Hello! I am Taofeek Akintunde, the owner of Taotech Solutions. I specialize in creating modern, user-friendly, and efficient mobile applications using Flutter. '
                  'With a passion for innovative solutions, I strive to deliver top-notch software that exceeds user expectations.',
                  style: GoogleFonts.roboto(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 20),

                // Skills Section
                Text(
                  'Core Skills',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SkillChip(skill: 'Flutter'),
                    SkillChip(skill: 'Dart'),
                    SkillChip(skill: 'Firebase'),
                    SkillChip(skill: 'UI/UX Design'),
                    SkillChip(skill: 'Python'),
                  ],
                ),

                const SizedBox(height: 20),

                // Career Highlights
                Text(
                  'Career Highlights',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                HighlightCard(
                  icon: Icons.school,
                  title: 'Education',
                  description:
                      'First Class B.Sc in Computer Science, Lagos State University',
                ),
                HighlightCard(
                  icon: Icons.code,
                  title: 'Experience',
                  description:
                      'Developed multiple mobile apps for clients using Flutter.',
                ),
                HighlightCard(
                  icon: Icons.star,
                  title: 'Achievements',
                  description:
                      'Recipient of ERASMUS+ Scholarship, MTN Scholarship, Amongst others.',
                ),

                const SizedBox(height: 20),

                // Contact Section
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContactPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.deepPurple,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                    icon: const Icon(Icons.mail),
                    label: const Text('Contact Me'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Widget for Skill Chip
class SkillChip extends StatelessWidget {
  final String skill;

  SkillChip({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        skill,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.deepPurple.shade400,
    );
  }
}

// Custom Widget for Highlight Card
class HighlightCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  HighlightCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 40),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
