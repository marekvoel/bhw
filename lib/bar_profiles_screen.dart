import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bar_detail_screen.dart';
import 'bar_profile.dart' as profile;

class BarProfilesScreen extends StatelessWidget {
  final List<profile.BarProfile> barProfiles = [
    profile.BarProfile(
        name: "Bar 1", description: "Description 1", rating: 4.5),
    profile.BarProfile(
        name: "Bar 2", description: "Description 2", rating: 4.2),
    profile.BarProfile(
        name: "Bar 3", description: "Description 3", rating: 4.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Profiles'),
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: barProfiles.length,
        itemBuilder: (context, index) {
          final profile.BarProfile barProfile = barProfiles[index];
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BarDetailScreen(barProfile: barProfile),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
