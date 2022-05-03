import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map Live Tracking"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column (
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                target: LatLng(28.7041, 77.1025),
                zoom: 18,
              ),
              onMapCreated: (GoogleMapController controller) {

              },
            ),
          )
        ],
      ),
    );
  }
}