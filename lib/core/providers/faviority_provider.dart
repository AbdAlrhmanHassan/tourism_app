import 'dart:developer';

import 'package:flutter/material.dart';

import '../../features/home/presentation/views/data/model/location_model.dart';
 
class FaviorityProvider extends ChangeNotifier {
  List<LocationModel> faviorityList = [];

  List<LocationModel> get getFaviorityList => faviorityList;
  void addOrRemoveItemToFaviorityList(LocationModel locationModel) {
    if (faviorityList.contains(locationModel) == false) {
      faviorityList.add(locationModel);
      log('added');
    } else {
      faviorityList.remove(locationModel);
      log('removed');
    }
    log(faviorityList.toString());
    notifyListeners();
  }
}
