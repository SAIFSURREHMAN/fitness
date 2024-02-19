import 'package:fitness_freaks/home.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'contact_us.dart';
import 'loginpage.dart';
import 'services.dart';
import 'text_constraint.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListTile(
                title: PText(
                  "Register",
                  color: Colors.black,
                  fontSize: 24,
                ),
                subtitle: PText(
                  'Connect With Us',
                  fontSize: 20,
                  color: Colors.black,
                ),
                leading: Icon(
                  Icons.login_rounded,
                  color: Colors.black,
                  size: 50,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
                },
              ),
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: PText(
                "Home",
                fontSize: 20,
                color: Colors.black,
              ),
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 40,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Home(),
                ));
              },
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: PText(
                "Services",
                fontSize: 20,
                color: Colors.black,
              ),
              leading: Icon(
                Icons.room_service,
                color: Colors.black,
                size: 40,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ServicesPage(),
                ));
              },
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: PText(
                "About",
                fontSize: 20,
                color: Colors.black,
              ),
              leading: Icon(
                Icons.info,
                color: Colors.black,
                size: 40,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AboutPage(),
                ));
              },
            ),
            Divider(
              height: 20,
            ),
            ListTile(
              title: PText(
                "Contact Us",
                fontSize: 20,
                color: Colors.black,
              ),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.black,
                size: 40,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ContactUsPage(),
                ));
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/rope.jpg",
                  fit: BoxFit.contain,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 20),
                  child: Text(
                    'GET YOUR BODY\nIN SHAPE',
                    style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            color: Colors.black,
                            offset: Offset(3, 3), // Adjust the shadow's offset
                            blurRadius: 5, // Adjust the blur radius
                          ),
                        ],
                        letterSpacing: 1,
                        wordSpacing: 4,
                        color: Color.fromARGB(255, 255, 225, 0),
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Center(
                child: Text(
                  "Build Your Body and Strength",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.blueGrey.shade500,
                  ),
                ),
              ),
              subtitle: PText(
                "Choose a plan to get started",
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Divider(color: Colors.white),
            ),
            ListTile(
              // Icon for Weight Gain
              title: PText(
                "Weight Gain",
                fontSize: 24,
                weight: FontWeight.w500,
                color: Colors.blueGrey.shade400,
              ),
              trailing: Icon(
                Icons.fitness_center,
                size: 50,
                color: Colors.yellowAccent,
              ),
              subtitle: PText(
                  "Gain muscle and weight with our tailored weight gain programs and nutritional guidance.",
                  fontSize: 18),
              onTap: () {
                // Add navigation or action for Weight Gain option here
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(color: Colors.white),
            ),
            ListTile(
              leading: Icon(
                Icons.local_fire_department,
                size: 50,
                color: Colors.redAccent,
              ), // Icon for Weight Loss
              title: PText(
                "Weight Loss",
                color: Colors.blueGrey.shade400,
                fontSize: 24,
                weight: FontWeight.w500,
              ),
              subtitle: PText(
                  "Lose weight and get in shape with our weight loss plans and expert support.",
                  fontSize: 18),
              onTap: () {
                // Add navigation or action for Weight Loss option here
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(color: Colors.white),
            ),
            ListTile(
              trailing: Icon(
                Icons.self_improvement,
                size: 50,
                color: Colors.greenAccent,
              ), // Icon for Yoga
              title: PText(
                "Yoga",
                color: Colors.blueGrey.shade400,
                fontSize: 24,
                weight: FontWeight.w500,
              ),
              subtitle: PText(
                  "Improve flexibility, reduce stress, and find inner peace through our yoga programs.",
                  fontSize: 18),
              onTap: () {
                // Add navigation or action for Yoga option here
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(color: Colors.white),
            ),
            ListTile(
              leading: Icon(
                Icons.fitness_center,
                size: 50,
                color: const Color.fromARGB(255, 8, 166, 245),
              ), // Icon for Power Lifting
              title: PText(
                "Power Lifting",
                color: Colors.blueGrey.shade400,
                fontSize: 24,
                weight: FontWeight.w500,
              ),
              subtitle: PText(
                  "Enhance your strength and power with our power lifting training routines and expert coaching.",
                  fontSize: 18),
              onTap: () {
                // Add navigation or action for Power Lifting option here
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(color: Colors.white, thickness: 8),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PText(
                    "Benefits of Using This App",
                    weight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.blueGrey.shade500,
                  ),
                  SizedBox(height: 10),
                  PText(
                    "We Have Several Perks and Advantages of Using Our App",
                    fontSize: 20,
                    weight: FontWeight.w500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Divider(color: Colors.white),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBenefit(
                          "Personalized fitness plans tailored to your goals"),
                      _buildBenefit("Expert guidance from certified trainers"),
                      _buildBenefit("Track your progress and achievements"),
                      _buildBenefit(
                          "Convenient access to workouts and yoga sessions"),
                      _buildBenefit("Nutritional guidance for a balanced diet"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Divider(color: Colors.white, thickness: 8),
            ),
          ],
        ),
      ),
    );
  }
}

class PricingPlan extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final List<String> features;

  PricingPlan({
    required this.title,
    required this.price,
    required this.description,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PText(
          title,
          weight: FontWeight.w700,
          fontSize: 20,
        ),
        PText(
          price,
          weight: FontWeight.w500,
          fontSize: 18,
        ),
        PText(
          description,
          fontSize: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: features.map((feature) {
            return Padding(
              padding: EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                    size: 20,
                  ),
                  SizedBox(width: 6),
                  PText(
                    feature,
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

Widget _buildBenefit(String benefitText) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "•",
        style: TextStyle(
          fontSize: 25,
          color: Colors.green,
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: PText(
          benefitText,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ],
  );
}
