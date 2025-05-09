class LocationModel {
  final String locationID;
  final String name;
  final String cityName;
  final String description;
  final String horizontalImageUrl;
  final String verticallImageUrl;
  final String googleMapsUrl; // New field for Google Maps link

  LocationModel({
    required this.locationID, // Initialize new field
    required this.name,
    required this.cityName,
    required this.description,
    required this.horizontalImageUrl,
    required this.verticallImageUrl,
    required this.googleMapsUrl, // Initialize new field
  });
}
