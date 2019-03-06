import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapTab extends StatelessWidget {
  static final CameraPosition _initialCameraPos = CameraPosition(
    target: LatLng(51.4193446, 0.0147306),
    zoom: 9.0,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _initialCameraPos,
    );
  }
}