
import 'package:flutter/material.dart';

import './session_screen.dart';
import '../model/mentor.dart';

class StartSessionScreen extends StatelessWidget {
  StartSessionScreen({required this.mentor});
  final Mentor mentor;
  @override
  bool clicked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Session'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mentor Name: ${mentor.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Expertise: ${mentor.expertise}',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Bio: ${mentor.bio}',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState() {
                  clicked = true;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SessionScreen(),
                  ),
                );
              },
              child: Text('Start Session'),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
