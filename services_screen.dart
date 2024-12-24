import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ServiceCard(service: 'Restaurant', description: 'Delicious cuisines served all day.'),
          ServiceCard(service: 'Spa', description: 'Relax and rejuvenate with our spa services.'),
          ServiceCard(service: 'Gym', description: 'Stay fit during your stay with our modern gym equipment.'),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String service;
  final String description;

  ServiceCard({required this.service, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(service, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
          ],
        ),
      ),
    );
  }
}