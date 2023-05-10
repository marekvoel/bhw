import 'package:flutter/material.dart';
import '../../../bhw_git/lib/bar_profiles_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bar Hop Alpha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/barProfiles': (context) => BarProfilesScreen(),
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
        child: ElevatedButton(
          child: Text('Bar Profiles'),
          onPressed: () {
            Navigator.pushNamed(context, '/barProfiles');
          },
        ),
      ),
    );
  }
}
