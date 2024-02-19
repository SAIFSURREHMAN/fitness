import 'package:flutter/material.dart';
import 'reuseablewidget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Discover | Connect | Achieve',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              wordSpacing: 5),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Welcome to Our Gym App!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Our Gym App offers a wide range of features to help you on your fitness journey:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromARGB(255, 54, 54, 53),
                ),
                child: FeatureCard(
                  title: 'Personalized Workouts',
                  description:
                      'Get tailored workout plans designed to help you achieve your fitness goals.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromARGB(255, 54, 54, 53),
                ),
                child: FeatureCard(
                  title: 'Nutritional Guidance',
                  description:
                      'Receive expert advice on nutrition and meal planning to support your workouts.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromARGB(255, 54, 54, 53),
                ),
                child: FeatureCard(
                  title: 'Community Support',
                  description:
                      'Connect with a supportive community of fitness enthusiasts and share your progress.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromARGB(255, 54, 54, 53),
                ),
                child: FeatureCard(
                  title: 'Track Your Progress',
                  description:
                      'Easily track your fitness achievements and monitor your health data.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                  color: Color.fromARGB(255, 54, 54, 53),
                ),
                child: FeatureCard(
                  title: 'Variety of Workouts',
                  description:
                      'Choose from a variety of workouts, including weight gain, weight loss, yoga, and powerlifting.',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
