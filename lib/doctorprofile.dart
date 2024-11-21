import 'package:flutter/material.dart';
import 'navbottom.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8ECF4), // Light background color
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8ECF4),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Doctor profile icon
          const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.medical_services_rounded,
              color: Color(0xFF1E3A8A),
              size: 40,
            ),
          ),
          const SizedBox(height: 10),
          // Doctor's name
          const Text(
            'Dr. Alok',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          // "View your Patients" button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E3A8A), // Button color
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'View your Patients',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 15),
          // "Add new Patients" button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                // Add navigation or functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E3A8A), // Button color
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Add new Patients',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      // Bottom navigation bar
      bottomNavigationBar: const NavBottom(),
    );
  }
}
