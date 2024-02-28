import 'package:delivery_app/AllWidgets/mapBoxMap.dart';
import 'package:delivery_app/AllWidgets/newMap.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
//nevigation
static const String idScreen = "mainScreen";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        
      ),
      body: MyMap()

    );
  }
}