import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/provider/location_provider.dart';

import 'google_map_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          child: const GoogleMapPage(),
        )
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: GoogleMapPage(),
      ),
    );
  }
}
