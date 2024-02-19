import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.black, // Set app bar background color
      ),
      body: Container(
        color: Colors.black, // Set background color to black
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.email,
                  size: 40, // Increase icon size
                  color: Colors.white, // Set icon color to white
                ),
                title: Text('Email: contact@example.com',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 40, // Increase icon size
                  color: Colors.white, // Set icon color to white
                ),
                title: Text('Phone: +123-456-7890',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 40, // Increase icon size
                  color: Colors.white, // Set icon color to white
                ),
                title: Text('Address: 123 Main St, City, Country',
                    style: TextStyle(color: Colors.white)), // Text color
              ),
              SizedBox(height: 20),
              Text(
                'Send Us a Message',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white, // Text color
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Increase font size
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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Your Email',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Increase font size
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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  labelStyle: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20, // Increase font size
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
                maxLines: 4,
              ),
              SizedBox(height: 20),
              Container(
                // Wrap the button with a Container
                color: Colors.black, // Set background color for the button
                child: ElevatedButton(
                  onPressed: () {
                    // Implement sending the message
                  },
                  child: Text(
                    'Send Message',
                    style: TextStyle(
                      fontSize: 20, // Increase font size
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent, // Button background color
                    onPrimary: Colors.black, // Button text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
