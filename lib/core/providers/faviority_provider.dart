import 'dart:developer';

import 'package:flutter/material.dart';

import '../../features/home/presentation/views/data/model/location_model.dart';

class FaviorityProvider extends ChangeNotifier {
  List<String> faviorityList = [];

  List<String> get getFavoriteListById => faviorityList;
  void addOrRemoveItemToFaviorityList(String locationModelId) {
    if (faviorityList.contains(locationModelId) == false) {
      faviorityList.add(locationModelId);
      log('added');
    } else {
      faviorityList.remove(locationModelId);
      log('removed');
    }
    log(faviorityList.toString());
    notifyListeners();
  }
}
