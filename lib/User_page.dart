import 'package:flutter/material.dart';

class userPage extends StatelessWidget {
  const userPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
                title: Text(
                  'Good Morning',
                  style: TextStyle(fontSize: 29),
                ),
                leading: Image.network(
                    'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),
                subtitle: Text(
                  'Saif Ur Rehman',
                  style: TextStyle(fontSize: 30),
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(12, 94, 94, 94)),
            ),
          ],
        ),
      ),
    );
  }
}
