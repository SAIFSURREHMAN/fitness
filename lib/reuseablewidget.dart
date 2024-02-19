import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;

  FeatureCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Color.fromARGB(255, 10, 10, 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                wordSpacing: 1,
                letterSpacing: 1,
                fontSize: 18,
              ),
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            Text(
              description,
              style:
                  TextStyle(color: Colors.white, fontSize: 14, wordSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }
}
