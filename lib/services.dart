import 'package:flutter/material.dart';
import 'reuseablewidget.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Services',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              wordSpacing: 3,
              letterSpacing: 3),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 54, 53),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: FeatureCard(
                  title: 'Getting Fit: Why It Matters',
                  description:
                      'Getting fit is not just a choice; it\'s a commitment to a healthier, more fulfilling life. Regular exercise and a balanced diet are essential for your physical and mental well-being. By prioritizing your fitness, you can experience benefits such as increased energy, improved mood, better sleep, and reduced risk of chronic diseases. Our services are designed to guide and support you on your journey to a healthier you. Start your fitness journey today!',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 54, 53),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: FeatureCard(
                  title: 'Weight Gain',
                  description:
                      'Our Weight Gain program is designed to help you gain muscle and weight. We provide tailored workout plans and nutritional guidance to achieve your weight gain goals.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 54, 53),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: FeatureCard(
                  title: 'Weight Loss',
                  description:
                      'Lose weight and get in shape with our Weight Loss plans. We offer a variety of weight loss programs and expert support to help you reach your fitness goals.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 54, 53),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: FeatureCard(
                  title: 'Yoga',
                  description:
                      'Improve flexibility, reduce stress, and find inner peace through our Yoga programs. Our yoga sessions are designed to help you enhance your well-being and balance.',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 54, 53),
                  borderRadius: BorderRadius.circular(10),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
                child: FeatureCard(
                  title: 'Power Lifting',
                  description:
                      'Enhance your strength and power with our Power Lifting training routines and expert coaching. Our programs are suitable for both beginners and experienced lifters.',
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white, // Background color for the body
    );
  }
}
