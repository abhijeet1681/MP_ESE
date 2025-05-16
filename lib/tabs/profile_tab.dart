import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/abhi.jpeg'), // optional profile image
          ),
          SizedBox(height: 20),
          Text("Abhijeet Jadhav", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text("abhijeet.jadhav24@spit.ac.in", style: TextStyle(fontSize: 18, color: Colors.grey[600])),
          SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.edit),
            label: Text("Edit Profile"),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 253, 252, 254),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              textStyle: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
