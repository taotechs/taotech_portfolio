import 'package:flutter/material.dart';
import '../widgets/custom_card.dart';

class ProjectsPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Publication Venue Recommender',
      'description':
          'A mobile app providing recommendations for research publication venues.',
      'link': 'https://github.com/taotechs/pubvenuerec',
    },
    {
      'title': 'E-Learning Platform',
      'description':
          'An e-learning platform with interactive courses and quizzes.',
      'link': 'https://github.com/taotechs/project_ilearn',
    },
    {
      'title': 'Portfolio Builder',
      'description': 'A Flutter-based web app for building portfolios.',
      'link': 'https://github.com/taotechs/taotech_portfolio',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return CustomCard(
              title: project['title']!,
              description: project['description']!,
              link: project['link']!,
            );
          },
        ),
      ),
    );
  }
}
