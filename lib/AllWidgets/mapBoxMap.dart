import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; 
import 'package:latlong2/latlong.dart'; 
  
class MapScreen extends StatefulWidget { 
  const MapScreen({super.key}); 
  
  @override 
  State<MapScreen> createState() => _MapScreenState(); 
} 
  
class _MapScreenState extends State<MapScreen> { 
  final MapController controller = MapController(); 
    
  // Change as per your need 
  LatLng latLng = const LatLng(48.8584, 2.2945);  
  
  @override 
  Widget build(BuildContext context) { 

    return Scaffold();
   /* return FlutterMap( 
      mapController: controller, 
      options: MapOptions( 
        initialCenter: latLng, 
        initialZoom: 18, 
      ), 
      children: [ 
        TileLayer( 
          urlTemplate: "mapbox://styles/mapbox/streets-v12"
        ), 
      ], 
    ); 
  */} 
} 