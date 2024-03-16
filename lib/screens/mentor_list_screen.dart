import 'package:flutter/material.dart';
import '../model/mentor.dart';
import '../screens/start_session_screen.dart';

class MentorsListScreen extends StatelessWidget {
  MentorsListScreen({required this.mentors});
  final List<Mentor> mentors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentors'),
      ),
      body: ListView.builder(
        itemCount: mentors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mentors[index].name),
            subtitle: Text(mentors[index].expertise),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StartSessionScreen(mentor: mentors[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
