import 'package:flutter/material.dart';

import 'package:timer_count_down/timer_count_down.dart';

class SessionScreen extends StatefulWidget {
  SessionScreen({super.key});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  bool over = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Countdown(
              seconds: 10,
              build: (BuildContext context, double time) =>
                  Text("Session starting in ${time.toString()}"),
              interval: Duration(milliseconds: 100),
              onFinished: () {
                over = true;
                final snackBar = SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Session has started.'),
                  duration: Duration(seconds: 3), // Adjust duration as needed
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
