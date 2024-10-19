import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/faviority_provider.dart';
import '../../../../home/presentation/views/data/model/location_model.dart';
import '../../../../home/presentation/views/widgets/location_card.dart';

class FaviorityViewBody extends StatefulWidget {
  const FaviorityViewBody({super.key});

  @override
  State<FaviorityViewBody> createState() => _FaviorityViewBodyState();
}

class _FaviorityViewBodyState extends State<FaviorityViewBody> {
  List<LocationModel> faviorityList = [];
  @override
  void initState() {
    faviorityList =
        Provider.of<FaviorityProvider>(context, listen: false).getFaviorityList;
    super.initState();
  }

  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    FaviorityProvider faviorityProvider =
        Provider.of<FaviorityProvider>(context);
    return ListView.builder(
      itemCount: faviorityList.length,
      itemBuilder: (context, index) {
        return LocationCard(
          locationModel: faviorityList[index],
          isFavorite: true,
          isFavoriteF: () {
            setState(() {
              faviorityProvider.addOrRemoveItemToFaviorityList(
                faviorityList[index],
              );
              isFavorite = !isFavorite;
            });
          },
        );
      },
    );
  }
}
