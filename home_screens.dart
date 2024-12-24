import 'package:flutter/material.dart';
import 'room_booking_screen.dart';
import 'services_screen.dart';
import 'contact_screen.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grand Arabia Hotel'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Image.asset('assets/hotel_banner.jpg', height: 200, fit: BoxFit.cover),
          SizedBox(height: 20),
          Text(
            'Welcome to Grand Arabia Hotel',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            'Enjoy luxury and comfort during your stay.',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RoomBookingScreen()),
              );
            },
            child: Text('Book a Room'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ServicesScreen()),
              );
            },
            child: Text('View Services'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              );
            },
            child: Text('Contact Us'),
          ),
        ],
      ),
    );
  }
}