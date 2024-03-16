import 'package:flutter/material.dart';
import '../model/mentor.dart';
import './mentor_list_screen.dart';

class HomePage extends StatelessWidget {
  final List<Mentor> mentors;

  HomePage({required this.mentors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcome to paytm mentorship',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Card(
        borderOnForeground: true,
        elevation: 8.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Business Mentorship Program!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Connect with experienced mentors to help you navigate the world of business.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MentorsListScreen(mentors: mentors),
                    ),
                  );
                },
                child: Text('View Mentors'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
