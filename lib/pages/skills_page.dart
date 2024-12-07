import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Skills'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade900,
              Colors.deepPurple.shade600,
              Colors.deepPurple.shade300,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            SkillCard(skill: 'Flutter', level: 'Advanced', icon: Icons.code),
            SkillCard(skill: 'Dart', level: 'Advanced', icon: Icons.code),
            SkillCard(
                skill: 'Firebase', level: 'Intermediate', icon: Icons.cloud),
            SkillCard(
                skill: 'UI/UX Design',
                level: 'Intermediate',
                icon: Icons.design_services),
            SkillCard(
                skill: 'Python', level: 'Intermediate', icon: Icons.analytics),
          ],
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final String skill;
  final String level;
  final IconData icon;

  SkillCard({required this.skill, required this.level, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.deepPurple.shade500,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  skill,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Level: $level',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
