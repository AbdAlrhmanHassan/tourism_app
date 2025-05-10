import '../../features/home/presentation/views/data/model/location_model.dart';

List<LocationModel> getFavoriteListById(
  List<LocationModel> locations,
  List<String> faviorityListId,
) {
  List<LocationModel> faviorityList = [];
  for (int i = 0; i < faviorityListId.length; i++) {
    for (int j = 0; j < locations.length; j++) {
      if (faviorityListId[i] == locations[j].locationID) {
        faviorityList.add(locations[j]);
      }
    }
  }
  return faviorityList;
}
