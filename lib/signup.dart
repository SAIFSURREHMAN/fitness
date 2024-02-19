import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.black, // Set app bar background color
      ),
      body: Container(
        color: Colors.black, // Set background color to black
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register With Us',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Font size
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white, // Icon color
                    size: 30, // Icon size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Font size
                  ),
                  prefixIcon: Icon(
                    Icons.calendar_today,
                    color: Colors.white, // Icon color
                    size: 30, // Icon size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Font size
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white, // Icon color
                    size: 30, // Icon size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Font size
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white, // Icon color
                    size: 30, // Icon size
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey), // Grey border color
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                // Wrap the button with a Container
                color: Colors.black, // Set background color for the button
                child: ElevatedButton(
                  onPressed: () {
                    // Implement signup logic
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20, // Font size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Button background color
                    onPrimary: Colors.white, // Button text color
                  ),
                ),
              ),
              Text(
                'Why This App Matters:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.green, // Vibrant green text color
                ),
              ),
              Text(
                'Connect with our app, your personal fitness companion, to reach your goals, '
                'get expert guidance, and join a supportive community on your journey to a healthier you!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
