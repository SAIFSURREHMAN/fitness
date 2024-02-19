import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'About Our App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white, // Text color
          ),
        ),
      ),
      body: Container(
        color: Colors.black, // Set background color to black
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'App Name: My Fitness App',
                style:
                    TextStyle(fontSize: 18, color: Colors.white), // Text color
              ),
              Text(
                'Version: 1.0.0',
                style:
                    TextStyle(fontSize: 18, color: Colors.white), // Text color
              ),
              Text(
                'Description: My Fitness App helps you achieve your fitness goals with personalized workout plans and expert guidance.',
                style:
                    TextStyle(fontSize: 18, color: Colors.white), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'Contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white, size: 40),
                title: Text('Email: contact@example.com',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white, size: 40),
                title: Text('Phone: +123-456-7890',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 40,
                ),
                title: Text('Address: 123 Main St, City, Country',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'About the Team',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Our dedicated team at My Fitness App is committed to helping you achieve your fitness goals. We strive to provide the best fitness solutions and support.',
                style:
                    TextStyle(fontSize: 18, color: Colors.white), // Text color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
