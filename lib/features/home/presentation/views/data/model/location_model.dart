class LocationModel {
  final String name;
  final String description;
  final String horizontalImageUrl;
  final String verticallImageUrl;
  final String googleMapsUrl; // New field for Google Maps link

  LocationModel({
    required this.name,
    required this.description,
    required this.horizontalImageUrl,
    required this.verticallImageUrl,
    required this.googleMapsUrl, // Initialize new field
  });
}
