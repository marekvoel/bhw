import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bar_profile.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BarDetailScreen extends StatelessWidget {
  final BarProfile barProfile;

  BarDetailScreen({required this.barProfile});

  @override
  Widget build(BuildContext context) {
    //final LatLng barLocation = LatLng(37.7749, -122.4194);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Details'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* This code creates a Google Map widget and sets it to the bar's location, which is stored in the barLocation variable. */

          /*Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: barLocation,
                zoom: 15.0,
              ),
              markers: Set<Marker>.from([
                Marker(
                  markerId: MarkerId('barMarker'),
                  position: barLocation,
                ),
              ]),
            ),
          ),
          */
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  barProfile.name,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Description: ${barProfile.description}',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Rating: ${barProfile.rating}',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
