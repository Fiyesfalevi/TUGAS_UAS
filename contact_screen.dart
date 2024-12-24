import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Grand Arabia Hotel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Address: Jl. Prof. A. Majid Ibrahim II No.3, Kp. Baru, Kec. Baiturrahman, Kota Banda Aceh, Aceh 23246'),
            SizedBox(height: 10),
            Text('Phone: 08116505200'),
            SizedBox(height: 10),
            Text('Email: info@grandarabiahotel.com'),
          ],
        ),
      ),
    );
  }
}