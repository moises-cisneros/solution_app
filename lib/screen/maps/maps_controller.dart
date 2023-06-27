import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController {
  final Map<MarkerId, Marker> markersDevice = {};

  // Converts the map values to a set
  Set<Marker> get marker => markersDevice.values.toSet();

  // Position of the map camera
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-17.788792, -63.174853), //partial position
    zoom: 13,
  );

  // Adds a new marker
  void addMarker(double lat, double lng) {
    // Crear un nuevo MarkerId
    final newMarkerId = MarkerId(markersDevice.length.toString());

    // Add the new Marker to the markersDevice map
    final newMarker = Marker(
      markerId: newMarkerId,
      position: LatLng(lat, lng),
      infoWindow: const InfoWindow(
          title: "Device Information #3", snippet: "Mosquito: 6,002"),
    );

    // Agregar el nuevo Marker al mapa markersDevice
    markersDevice[newMarkerId] = newMarker;
  }
}
