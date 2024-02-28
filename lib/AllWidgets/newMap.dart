import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class MyMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      body: FlutterMap(
        options: MapOptions(
         
        initialZoom: 18, 
         
        ),
        children: [

          TileLayer( 
          urlTemplate: "mapbox://styles/mapbox/streets-v12"
        ), 
        ],
      ),
    );
  }
}
