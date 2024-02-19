import 'package:fitness_freaks/splash_screen.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController feetController = TextEditingController();
  TextEditingController inchesController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmi = 0;

  @override
  void dispose() {
    feetController.dispose();
    inchesController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                ));
              },
              icon: Icon(Icons.arrow_back_ios))
        ],
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: feetController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Feet'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: inchesController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Inches'),
                  ),
                ),
              ],
            ),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter your weight (kg)'),
            ),
            ElevatedButton(
              onPressed: () {
                // Calculate BMI here and set it to 'bmi'
                setState(() {
                  int feet = int.tryParse(feetController.text) ?? 0;
                  int inches = int.tryParse(inchesController.text) ?? 0;
                  int totalInches = feet * 12 + inches;
                  int weight = int.tryParse(weightController.text) ?? 0;
                  bmi = calculateBMI(totalInches, weight);
                });
              },
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 20),
            Text(
              'Your BMI is: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateBMI(int totalInches, int weight) {
    // Implement the BMI calculation logic here
    if (totalInches <= 0 || weight <= 0) {
      return 0;
    }
    double heightInMeters = totalInches * 0.0254; // Convert inches to meters
    return weight / (heightInMeters * heightInMeters);
  }
}
