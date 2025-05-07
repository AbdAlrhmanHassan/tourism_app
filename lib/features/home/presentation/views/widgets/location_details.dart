import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/generated/l10n.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../core/providers/faviority_provider.dart';
import '../data/model/location_model.dart';

class LocationDetails extends StatefulWidget {
  final LocationModel location;

  const LocationDetails({super.key, required this.location});

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  late bool isFavorite;

  @override
  void initState() {
    getFavoriteStatus();
    super.initState();
  }

  void getFavoriteStatus() {
    isFavorite = Provider.of<FaviorityProvider>(context, listen: false)
        .getFavoriteListById
        .contains(widget.location);
    log(Provider.of<FaviorityProvider>(context, listen: false)
        .getFavoriteListById
        .toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final FaviorityProvider faviorityProvider =
        Provider.of<FaviorityProvider>(context);
    return ChangeNotifierProvider<FaviorityProvider>(
        create: (_) => FaviorityProvider(),
        builder: (context, _) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            body: Stack(
              children: [
                // Background image taking up half the screen
                SizedBox(
                  height:
                      screenHeight * 0.65, // Image will take up half the screen
                  child: Image.network(
                    widget.location.verticallImageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity, // Fill the width of the screen
                  ),
                ),
                // Gradient overlay for better readability
                Positioned.fill(
                  child: Container(
                    height: screenHeight * 0.65, // Match the image height
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                // Details content
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: screenHeight * 0.4,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Location name
                        Text(
                          widget.location.name,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Description
                        Text(
                          widget.location.description,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                            height: 1.5,
                          ),
                        ),
                        const Spacer(),
                        // Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () async {
                                // Check if the URL can be launched and open it
                                if (await launchUrlString(
                                    widget.location.googleMapsUrl)) {
                                  await launchUrlString(
                                      widget.location.googleMapsUrl,
                                      mode: LaunchMode.externalApplication);
                                } else {
                                  log('Could not launch ${widget.location.googleMapsUrl}');
                                  throw 'Could not launch ${widget.location.googleMapsUrl}';
                                }
                              },
                              icon: Image.network(
                                'https://lh3.googleusercontent.com/9tLfTpdILdHDAvGrRm7GdbjWdpbWSMOa0csoQ8pUba9tLP8tq7M4Quks1xuMQAVnAxVfryiDXRzZ-KDnkPv8Sm4g_YFom1ltQHjQ6Q',
                                width: 20,
                                height: 20,
                              ),
                              label: Text(S.of(context).showOnMap),
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              transitionBuilder: (child, animation) {
                                return ScaleTransition(
                                  scale: animation,
                                  child: child,
                                );
                              },
                              child: isFavorite
                                  ? IconButton(
                                      key: const ValueKey('favorite'),
                                      onPressed: () {
                                        faviorityProvider
                                            .addOrRemoveItemToFaviorityList(
                                                widget.location.locationID);

                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      icon: const Icon(Icons.favorite),
                                      color: Colors.red[400],
                                      iconSize: 30,
                                    )
                                  : IconButton(
                                      key: const ValueKey('favorite_border'),
                                      onPressed: () {
                                        faviorityProvider
                                            .addOrRemoveItemToFaviorityList(
                                                widget.location.locationID);
                                        setState(() {
                                          isFavorite = !isFavorite;
                                        });
                                      },
                                      icon: const Icon(Icons.favorite_border),
                                      color: Colors.red[400],
                                      iconSize: 30,
                                    ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
