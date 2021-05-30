import 'dart:convert';

import 'package:flutter_cache/flutter_cache.dart' as cache;
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:restaurant_menu/constants/constants.dart';
import 'package:restaurant_menu/modal/restaurantModal.dart';

class ResController extends GetxController {
  var restaurantModel = Rxn<RestaurantModel>();
  var searchHotel = <Item>[].obs;
  var isSearching = false.obs;

  fetchRestraunt() async {
    var body = {
      "access_token": "04fc7877ce7e5f771328b2a1434cb040ad1b2c0f",
      "api_key": "f14qd3se9a6juzbmoit85c0nrvhykgwp",
      "api_secret": "0ecb9930ec89b68dbc923d3ecedc43f37901cf61",
      "restID": "k13cv5ho",
      "last_updated_on": "",
      "data_type": "json"
    };

    var header = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Cookie': 'CAKEPHP=ikabifbaphe2m3eobl92here51'
    };

    var response = await cache.remember(
      'data',
      () async => await http
          .post(
            Uri.parse(RestaurantApi),
            body: jsonEncode(body),
            headers: header,
          )
          .then((value) => value.body),
    );

    restaurantModel.value = RestaurantModel.fromJson(response);
  }

  search(String searchResto) {
    searchResto = searchResto.toLowerCase();
    searchHotel.clear();
    searchHotel.addAll(
      restaurantModel.value!.items.where((element) =>
          element.itemname.toLowerCase().contains(searchResto) ||
          element.itemdescription.toLowerCase().contains(searchResto)),
    );
  }

  @override
  void onInit() {
    fetchRestraunt();
    super.onInit();
  }
}
