import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BarProfile {
  final String name;
  final String description;
  final double rating;

  BarProfile(
      {required this.name, required this.description, required this.rating});
}

class BarProfilesScreen extends StatelessWidget {
  // Create a list of bar profiles
  final List<BarProfile> barProfiles = [
    BarProfile(name: "Bar 1", description: "Description 1", rating: 4.5),
    BarProfile(name: "Bar 2", description: "Description 2", rating: 4.2),
    BarProfile(name: "Bar 3", description: "Description 3", rating: 4.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Profiles'),
        backgroundColor: Colors.orange, // Set the AppBar color to orange
      ),
      body: ListView.builder(
        itemCount: barProfiles.length,
        itemBuilder: (context, index) {
          final barProfile = barProfiles[index];
          return ListTile(
            leading: Icon(
              CupertinoIcons.bell_fill,
              color: Colors.green,
              size: 30.0,
            ),
            title: Text(
              barProfile.name,
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            subtitle: Text(
              barProfile.description,
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    color: Colors.black,
                  ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rating',
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            color: Colors.black,
                          ),
                ),
                Text(
                  barProfile.rating.toString(),
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            color: Colors.black,
                          ),
                ),
              ],
            ),
            onTap: () {
              // Handle when a bar profile is selected
              // e.g., navigate to a details screen
            },
          );
        },
      ),
    );
  }
}
