import 'package:flutter/material.dart';
import 'navbottom.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              'What are you looking for?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 15),
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Patient ID/Patient Name',
                prefixIcon: const Icon(Icons.search, color: Colors.black54),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Recent Searches title
            const Text(
              'Recent Searches',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Recent search items
            Expanded(
              child: ListView(
                children: [
                  _buildRecentSearchItem('Patient 1'),
                  _buildRecentSearchItem('Patient 2'),
                  _buildRecentSearchItem('Patient 3'),
                  _buildRecentSearchItem('Patient 4'),
                  _buildRecentSearchItem('Patient 5'),
                ],
              ),
            ),
            // Clear button
            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Add functionality to clear recent searches
                },
                icon: const Icon(Icons.close, color: Colors.black54),
                label: const Text('Clear', style: TextStyle(color: Colors.black54)),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black54),
                ),
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: const NavBottom(),
    );
  }

  // Helper widget for recent search items
  Widget _buildRecentSearchItem(String patientName) {
    return ListTile(
      leading: const Icon(Icons.person, color: Color(0xFF1E3A8A)),
      title: Text(
        patientName,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      onTap: () {
        // Add functionality when a recent search is tapped
      },
    
    );
  }
}
