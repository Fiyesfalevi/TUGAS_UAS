import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grand_arabia_hotel/screens/home_screens.dart'; // Ganti dengan nama proyek Anda

void main() {
  testWidgets('HomeScreen loads correctly', (WidgetTester tester) async {
    // Build the HomeScreen widget.
    await tester.pumpWidget(MaterialApp(home: HomeScreens()));

    // Verify that the title is displayed.
    expect(find.text('Grand Arabia Hotel'), findsOneWidget);

    // Verify the buttons are displayed.
    expect(find.text('Book a Room'), findsOneWidget);
    expect(find.text('View Services'), findsOneWidget);
    expect(find.text('Contact Us'), findsOneWidget);

    // Verify that the image is loaded.
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('RoomBookingScreen displays rooms', (WidgetTester tester) async {
    // Build the RoomBookingScreen widget.
    await tester.pumpWidget(MaterialApp(home: HomeScreens()));

    // Verify that room types are displayed.
    expect(find.text('Deluxe Room'), findsOneWidget);
    expect(find.text('Suite Room'), findsOneWidget);
    expect(find.text('Family Room'), findsOneWidget);

    // Verify booking buttons exist.
    expect(find.text('Book Now'), findsNWidgets(3)); // Tiga tombol untuk tiga tipe kamar
  });
}