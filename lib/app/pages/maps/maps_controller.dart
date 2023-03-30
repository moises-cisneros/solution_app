import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController {
  final Map<MarkerId, Marker> markersDevice = {};

  //Convierte los valores del map a set
  Set<Marker> get marker => markersDevice.values.toSet();

  //Posicion de la camara del mapa
  final initialCameraPosition = const CameraPosition(
    target: LatLng(-17.788792, -63.174853), //posicion parcial
    zoom: 13,
  );

  //Agrega un nuevo marcador
  void addMarker(double lat, double lng) {
    // Crear un nuevo MarkerId
    final newMarkerId = MarkerId(markersDevice.length.toString());

    // Crear un nuevo Marker en la posición especificada
    final newMarker = Marker(
      markerId: newMarkerId,
      position: LatLng(lat, lng),
    );

    // Agregar el nuevo Marker al mapa markersDevice
    markersDevice[newMarkerId] = newMarker;
  }
}
