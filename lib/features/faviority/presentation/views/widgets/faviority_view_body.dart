import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/core/helper_function/get_faviorite_list_by_id.dart';

import '../../../../../const.dart';
import '../../../../../core/providers/faviority_provider.dart';
import '../../../../home/presentation/views/data/model/location_model.dart';
import '../../../../home/presentation/views/widgets/location_card.dart';

class FaviorityViewBody extends StatefulWidget {
  const FaviorityViewBody({super.key});

  @override
  State<FaviorityViewBody> createState() => _FaviorityViewBodyState();
}

class _FaviorityViewBodyState extends State<FaviorityViewBody> {
  List<String> faviorityListId = [];
  List<LocationModel> faviorityList = [];
  List<LocationModel> locations = [];

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    locations = getLocations(context);

    faviorityList = getFavoriteListById(locations, faviorityListId);
  }

  @override
  void initState() {
    faviorityListId = Provider.of<FaviorityProvider>(context, listen: false)
        .getFavoriteListById;

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
                faviorityList[index].locationID,
              );
              isFavorite = !isFavorite;
            });
          },
        );
      },
    );
  }
}
