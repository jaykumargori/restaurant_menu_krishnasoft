import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_menu/controller/res_controller.dart';
import 'package:restaurant_menu/modal/restaurantModal.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ResController _resController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: _buildAppbarTitle(),
          centerTitle: true,
          backgroundColor: Color(0xff111328),
          actions: [
            Obx(
              () => Visibility(
                visible: !_resController.isSearching.value,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  color: Colors.black,
                  onPressed: () {
                    _resController.isSearching.value =
                        !_resController.isSearching.value;
                  },
                ),
              ),
            ),
          ],
        ),
        body: Container(
          child: Obx(
            () => _resController.restaurantModel.value == null
                ? Center(child: CircularProgressIndicator())
                : _buildDisheslist(),
          ),
        ));
  }

  ListView _buildDisheslist() {
    return ListView.builder(
        itemCount: _resController.isSearching.value
            ? _resController.searchHotel.length
            : _resController.restaurantModel.value!.items.length,
        itemBuilder: (context, index) {
          var item = _resController.isSearching.value
              ? _resController.searchHotel[index]
              : _resController.restaurantModel.value!.items[index];
          return buildDishItem(item);
        });
  }

  Container buildDishItem(Item item) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400.withOpacity(0.7),
            blurRadius: 16,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              item.item_image_url.isNotEmpty
                  ? foodImage(item)
                  : Icon(
                      Icons.food_bank,
                      size: 120,
                    ),
              SizedBox(
                width: 10,
              ),
              Flexible(child: dishDetails(item)),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              child: addDish(),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }

  Container foodImage(Item item) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: CachedNetworkImageProvider(item.item_image_url),
        ),
      ),
    );
  }

  Column dishDetails(Item item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.itemname,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        Text(
          item.itemdescription,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Text('₹' + item.price)
      ],
    );
  }

  Container addDish() {
    return Container(
      height: 30,
      width: 70,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Color(0xff111328)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Obx _buildAppbarTitle() {
    return Obx(
      () => _resController.isSearching.value
          ? CupertinoSearchTextField(
              onChanged: (searchResto) {
                _resController.search(searchResto);
              },
              onSuffixTap: () {
                _resController.isSearching.value = false;
                _resController.searchHotel.clear();
              },
              suffixMode: OverlayVisibilityMode.always,
            )
          : Text(
              'Restaurant App',
              style: TextStyle(color: Colors.white),
            ),
    );
  }
}
