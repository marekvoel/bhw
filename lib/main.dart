import 'package:flutter/material.dart';
import 'bar_profiles_screen.dart';
import 'registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Hop Alpha',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomeScreen(),
      routes: {
        '/barProfiles': (context) => BarProfilesScreen(),
        '/registration': (context) => RegistrationScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Bar Profiles'),
              onPressed: () {
                Navigator.pushNamed(context, '/barProfiles');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Registration'),
              onPressed: () {
                Navigator.pushNamed(context, '/registration');
              },
            ),
          ],
        ),
      ),
    );
  }
}
