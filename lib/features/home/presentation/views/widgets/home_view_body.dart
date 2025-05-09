// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../const.dart';
import '../../../helper_function/ai_preference_bottom_sheet.dart';
import '../data/model/location_model.dart';
import '../home_view.dart';
import 'location_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final locationsL = getLocations(context);

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.only(
            bottom: 80), // ensure last item isn't hidden by the FAB
        itemCount: locationsL.length,
        itemBuilder: (context, index) =>
            LocationCard(locationModel: locationsL[index]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        onPressed: () {
          // Show the bottom sheet
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return const AiPreferenceBottomSheet();
            },
          );
          // navigate to AI chat, for example
        },
        icon: const Icon(Icons.smart_toy), // AI icon
        label: const Text('اسأل المساعد'), // Arabic text next to icon
        tooltip: 'Ask AI for help',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
