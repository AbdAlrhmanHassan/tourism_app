import 'package:flutter/material.dart';

import '../data/model/location_model.dart';
import 'location_details.dart';

class LocationCard extends StatelessWidget {
  final LocationModel locationModel;
  final Function()? isFavoriteF;
  final bool? isFavorite;
  const LocationCard({
    super.key,
    required this.locationModel,
    this.isFavoriteF,
    this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: () {
        // Navigate to the details page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationDetails(location: locationModel),
          ),
        );
      },
      child: ClipRRect(
        child: Card(
          color: Colors.white,
          elevation: 2,
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // Image taking half of the card's height
              Stack(
                children: [
                  Image.network(
                    locationModel.horizontalImageUrl,
                    fit: BoxFit.cover,
                    height: 220,
                    width: double
                        .infinity, // Make the image fill the width of the card
                  ),
                  if (isFavorite != null)
                    Positioned(
                      top: 5,
                      left: 5,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (child, animation) {
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                        child: isFavorite!
                            ? IconButton(
                                key: const ValueKey('favorite'),
                                onPressed: isFavoriteF,
                                icon: const Icon(Icons.favorite),
                                color: Colors.red[400],
                                disabledColor: Colors.red[400],
                                iconSize: 30,
                              )
                            : IconButton(
                                key: const ValueKey('favorite_border'),
                                onPressed: isFavoriteF,
                                icon: const Icon(Icons.favorite_border),
                                color: Colors.red[300],
                                iconSize: 30,
                              ),
                      ),
                    ),
                ],
              ),
              // Padding for text and button content
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          locationModel.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' - ${locationModel.cityName}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      locationModel.description,
                      style: const TextStyle(fontSize: 16),
                      maxLines:
                          2, // Limit to two lines to keep the card concise
                      overflow: TextOverflow
                          .ellipsis, // Add ellipsis if the text is too long
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
