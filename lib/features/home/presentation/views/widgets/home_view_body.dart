// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../data/model/location_model.dart';
import 'location_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<LocationModel> locationsL = getLocations(context);

    return ListView.builder(
      itemCount: locationsL.length,
      itemBuilder: (context, index) {
        return LocationCard(locationModel: locationsL[index]);
      },
    );
  }
}
