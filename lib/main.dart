import 'package:flutter/material.dart';
import './model/mentor.dart';
import './screens/home_screen.dart';

void main() {
  List<Mentor> mentors = [
    Mentor(
        name: "John Doe",
        expertise: "Marketing",
        bio: "10 years of experience in digital marketing."),
    Mentor(
        name: "Jane Smith",
        expertise: "Finance",
        bio: "CPA with extensive knowledge in financial planning."),
    Mentor(
        name: "Mark Spencer", expertise: "Sales", bio: "Sales Head at PayTm"),
    Mentor(
        name: "Alice Johnson",
        expertise: "Software Development",
        bio:
            "Full-stack developer with experience in building scalable web applications."),
    Mentor(
        name: "Michael Brown",
        expertise: "Data Science",
        bio:
            "Data scientist with expertise in machine learning and predictive analytics."),
    Mentor(
        name: "Emily Wilson",
        expertise: "UX/UI Design",
        bio:
            "Experienced UX/UI designer focused on creating intuitive user interfaces."),
    Mentor(
        name: "David Martinez",
        expertise: "Product Management",
        bio:
            "Product manager with a track record of launching successful products."),
    Mentor(
        name: "Sarah Thompson",
        expertise: "Human Resources",
        bio:
            "HR specialist with experience in talent acquisition and employee relations."),
    Mentor(
        name: "Robert Lee",
        expertise: "Entrepreneurship",
        bio: "Serial entrepreneur with multiple successful startups."),
    Mentor(
        name: "Karen Davis",
        expertise: "Operations",
        bio:
            "Operations manager with expertise in streamlining processes for efficiency."),
    Mentor(
        name: "Sourav Kumar",
        expertise: "Finance",
        bio:
            "Finance head at PayTm having 2 Years experience in Finance and beginner at Flutter"),
    // Add more mentors here
  ];

  runApp(MyApp(mentors: mentors));
}

class MyApp extends StatelessWidget {
  final List<Mentor> mentors;

  MyApp({required this.mentors});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Mentorship Program',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(mentors: mentors),
    );
  }
}
