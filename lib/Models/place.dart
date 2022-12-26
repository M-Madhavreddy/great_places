import 'dart:io';

class PlaceAddress {
  final double latitude;
  final double longitude;
  String ? address;

  PlaceAddress({
    required this.latitude,
    required this.longitude,
    this.address,
});
}

class Place{
  final String id;
  final String title;
  final PlaceAddress location;
  final File image;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
});
}