import 'dart:convert';

import 'package:flutter/foundation.dart';

class RestaurantModel {
  final String success;
  final String message;
  final List<Restaurant> restaurants;
  final List<Ordertype> ordertypes;
  final List<Categorie> categories;
  final List<Parentcategorie> parentcategories;
  final List<Item> items;
  final List<Variation> variations;
  final List<Addongroup> addongroups;
  final List<Attribute> attributes;
  final List<Discount> discounts;
  final List<Taxe> taxes;
  final String serverdatetime;
  final String db_version;
  final String application_version;
  final int http_code;
  RestaurantModel({
    required this.success,
    required this.message,
    required this.restaurants,
    required this.ordertypes,
    required this.categories,
    required this.parentcategories,
    required this.items,
    required this.variations,
    required this.addongroups,
    required this.attributes,
    required this.discounts,
    required this.taxes,
    required this.serverdatetime,
    required this.db_version,
    required this.application_version,
    required this.http_code,
  });

  RestaurantModel copyWith({
    String? success,
    String? message,
    List<Restaurant>? restaurants,
    List<Ordertype>? ordertypes,
    List<Categorie>? categories,
    List<Parentcategorie>? parentcategories,
    List<Item>? items,
    List<Variation>? variations,
    List<Addongroup>? addongroups,
    List<Attribute>? attributes,
    List<Discount>? discounts,
    List<Taxe>? taxes,
    String? serverdatetime,
    String? db_version,
    String? application_version,
    int? http_code,
  }) {
    return RestaurantModel(
      success: success ?? this.success,
      message: message ?? this.message,
      restaurants: restaurants ?? this.restaurants,
      ordertypes: ordertypes ?? this.ordertypes,
      categories: categories ?? this.categories,
      parentcategories: parentcategories ?? this.parentcategories,
      items: items ?? this.items,
      variations: variations ?? this.variations,
      addongroups: addongroups ?? this.addongroups,
      attributes: attributes ?? this.attributes,
      discounts: discounts ?? this.discounts,
      taxes: taxes ?? this.taxes,
      serverdatetime: serverdatetime ?? this.serverdatetime,
      db_version: db_version ?? this.db_version,
      application_version: application_version ?? this.application_version,
      http_code: http_code ?? this.http_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'message': message,
      'restaurants': restaurants.map((x) => x.toMap()).toList(),
      'ordertypes': ordertypes.map((x) => x.toMap()).toList(),
      'categories': categories.map((x) => x.toMap()).toList(),
      'parentcategories': parentcategories.map((x) => x.toMap()).toList(),
      'items': items.map((x) => x.toMap()).toList(),
      'variations': variations.map((x) => x.toMap()).toList(),
      'addongroups': addongroups.map((x) => x.toMap()).toList(),
      'attributes': attributes.map((x) => x.toMap()).toList(),
      'discounts': discounts.map((x) => x.toMap()).toList(),
      'taxes': taxes.map((x) => x.toMap()).toList(),
      'serverdatetime': serverdatetime,
      'db_version': db_version,
      'application_version': application_version,
      'http_code': http_code,
    };
  }

  factory RestaurantModel.fromMap(Map<String, dynamic> map) {
    return RestaurantModel(
      success: map['success'],
      message: map['message'],
      restaurants: List<Restaurant>.from(
          map['restaurants']?.map((x) => Restaurant.fromMap(x))),
      ordertypes: List<Ordertype>.from(
          map['ordertypes']?.map((x) => Ordertype.fromMap(x))),
      categories: List<Categorie>.from(
          map['categories']?.map((x) => Categorie.fromMap(x))),
      parentcategories: List<Parentcategorie>.from(
          map['parentcategories']?.map((x) => Parentcategorie.fromMap(x))),
      items: List<Item>.from(map['items']?.map((x) => Item.fromMap(x))),
      variations: List<Variation>.from(
          map['variations']?.map((x) => Variation.fromMap(x))),
      addongroups: List<Addongroup>.from(
          map['addongroups']?.map((x) => Addongroup.fromMap(x))),
      attributes: List<Attribute>.from(
          map['attributes']?.map((x) => Attribute.fromMap(x))),
      discounts: List<Discount>.from(
          map['discounts']?.map((x) => Discount.fromMap(x))),
      taxes: List<Taxe>.from(map['taxes']?.map((x) => Taxe.fromMap(x))),
      serverdatetime: map['serverdatetime'],
      db_version: map['db_version'],
      application_version: map['application_version'],
      http_code: map['http_code']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory RestaurantModel.fromJson(String source) =>
      RestaurantModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RestaurantModel(success: $success, message: $message, restaurants: $restaurants, ordertypes: $ordertypes, categories: $categories, parentcategories: $parentcategories, items: $items, variations: $variations, addongroups: $addongroups, attributes: $attributes, discounts: $discounts, taxes: $taxes, serverdatetime: $serverdatetime, db_version: $db_version, application_version: $application_version, http_code: $http_code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RestaurantModel &&
        other.success == success &&
        other.message == message &&
        listEquals(other.restaurants, restaurants) &&
        listEquals(other.ordertypes, ordertypes) &&
        listEquals(other.categories, categories) &&
        listEquals(other.parentcategories, parentcategories) &&
        listEquals(other.items, items) &&
        listEquals(other.variations, variations) &&
        listEquals(other.addongroups, addongroups) &&
        listEquals(other.attributes, attributes) &&
        listEquals(other.discounts, discounts) &&
        listEquals(other.taxes, taxes) &&
        other.serverdatetime == serverdatetime &&
        other.db_version == db_version &&
        other.application_version == application_version &&
        other.http_code == http_code;
  }

  @override
  int get hashCode {
    return success.hashCode ^
        message.hashCode ^
        restaurants.hashCode ^
        ordertypes.hashCode ^
        categories.hashCode ^
        parentcategories.hashCode ^
        items.hashCode ^
        variations.hashCode ^
        addongroups.hashCode ^
        attributes.hashCode ^
        discounts.hashCode ^
        taxes.hashCode ^
        serverdatetime.hashCode ^
        db_version.hashCode ^
        application_version.hashCode ^
        http_code.hashCode;
  }
}

class Restaurant {
  final String restaurantid;
  final String active;
  final Details details;
  Restaurant({
    required this.restaurantid,
    required this.active,
    required this.details,
  });

  Restaurant copyWith({
    String? restaurantid,
    String? active,
    Details? details,
  }) {
    return Restaurant(
      restaurantid: restaurantid ?? this.restaurantid,
      active: active ?? this.active,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'restaurantid': restaurantid,
      'active': active,
      'details': details.toMap(),
    };
  }

  factory Restaurant.fromMap(Map<String, dynamic> map) {
    return Restaurant(
      restaurantid: map['restaurantid'],
      active: map['active'],
      details: Details.fromMap(map['details']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Restaurant.fromJson(String source) =>
      Restaurant.fromMap(json.decode(source));

  @override
  String toString() =>
      'Restaurant(restaurantid: $restaurantid, active: $active, details: $details)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Restaurant &&
        other.restaurantid == restaurantid &&
        other.active == active &&
        other.details == details;
  }

  @override
  int get hashCode =>
      restaurantid.hashCode ^ active.hashCode ^ details.hashCode;
}

class Details {
  final String menusharingcode;
  final String country;
  final List<dynamic> images;
  final String restaurantname;
  final String address;
  final String contact;
  final String latitude;
  final String longitude;
  final String landmark;
  final String city;
  final String state;
  final String minimumorderamount;
  final String minimumdeliverytime;
  final String deliverycharge;
  final String deliveryhoursfrom1;
  final String deliveryhoursto1;
  final String deliveryhoursfrom2;
  final String deliveryhoursto2;
  final int calculatetaxonpacking;
  final int calculatetaxondelivery;
  final String packaging_applicable_on;
  final String packaging_charge;
  final String packaging_charge_type;
  Details({
    required this.menusharingcode,
    required this.country,
    required this.images,
    required this.restaurantname,
    required this.address,
    required this.contact,
    required this.latitude,
    required this.longitude,
    required this.landmark,
    required this.city,
    required this.state,
    required this.minimumorderamount,
    required this.minimumdeliverytime,
    required this.deliverycharge,
    required this.deliveryhoursfrom1,
    required this.deliveryhoursto1,
    required this.deliveryhoursfrom2,
    required this.deliveryhoursto2,
    required this.calculatetaxonpacking,
    required this.calculatetaxondelivery,
    required this.packaging_applicable_on,
    required this.packaging_charge,
    required this.packaging_charge_type,
  });

  Details copyWith({
    String? menusharingcode,
    String? country,
    List<dynamic>? images,
    String? restaurantname,
    String? address,
    String? contact,
    String? latitude,
    String? longitude,
    String? landmark,
    String? city,
    String? state,
    String? minimumorderamount,
    String? minimumdeliverytime,
    String? deliverycharge,
    String? deliveryhoursfrom1,
    String? deliveryhoursto1,
    String? deliveryhoursfrom2,
    String? deliveryhoursto2,
    int? calculatetaxonpacking,
    int? calculatetaxondelivery,
    String? packaging_applicable_on,
    String? packaging_charge,
    String? packaging_charge_type,
  }) {
    return Details(
      menusharingcode: menusharingcode ?? this.menusharingcode,
      country: country ?? this.country,
      images: images ?? this.images,
      restaurantname: restaurantname ?? this.restaurantname,
      address: address ?? this.address,
      contact: contact ?? this.contact,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      landmark: landmark ?? this.landmark,
      city: city ?? this.city,
      state: state ?? this.state,
      minimumorderamount: minimumorderamount ?? this.minimumorderamount,
      minimumdeliverytime: minimumdeliverytime ?? this.minimumdeliverytime,
      deliverycharge: deliverycharge ?? this.deliverycharge,
      deliveryhoursfrom1: deliveryhoursfrom1 ?? this.deliveryhoursfrom1,
      deliveryhoursto1: deliveryhoursto1 ?? this.deliveryhoursto1,
      deliveryhoursfrom2: deliveryhoursfrom2 ?? this.deliveryhoursfrom2,
      deliveryhoursto2: deliveryhoursto2 ?? this.deliveryhoursto2,
      calculatetaxonpacking:
          calculatetaxonpacking ?? this.calculatetaxonpacking,
      calculatetaxondelivery:
          calculatetaxondelivery ?? this.calculatetaxondelivery,
      packaging_applicable_on:
          packaging_applicable_on ?? this.packaging_applicable_on,
      packaging_charge: packaging_charge ?? this.packaging_charge,
      packaging_charge_type:
          packaging_charge_type ?? this.packaging_charge_type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'menusharingcode': menusharingcode,
      'country': country,
      'images': images,
      'restaurantname': restaurantname,
      'address': address,
      'contact': contact,
      'latitude': latitude,
      'longitude': longitude,
      'landmark': landmark,
      'city': city,
      'state': state,
      'minimumorderamount': minimumorderamount,
      'minimumdeliverytime': minimumdeliverytime,
      'deliverycharge': deliverycharge,
      'deliveryhoursfrom1': deliveryhoursfrom1,
      'deliveryhoursto1': deliveryhoursto1,
      'deliveryhoursfrom2': deliveryhoursfrom2,
      'deliveryhoursto2': deliveryhoursto2,
      'calculatetaxonpacking': calculatetaxonpacking,
      'calculatetaxondelivery': calculatetaxondelivery,
      'packaging_applicable_on': packaging_applicable_on,
      'packaging_charge': packaging_charge,
      'packaging_charge_type': packaging_charge_type,
    };
  }

  factory Details.fromMap(Map<String, dynamic> map) {
    return Details(
      menusharingcode: map['menusharingcode'],
      country: map['country'],
      images: List<dynamic>.from(map['images']),
      restaurantname: map['restaurantname'],
      address: map['address'],
      contact: map['contact'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      landmark: map['landmark'],
      city: map['city'],
      state: map['state'],
      minimumorderamount: map['minimumorderamount'],
      minimumdeliverytime: map['minimumdeliverytime'],
      deliverycharge: map['deliverycharge'],
      deliveryhoursfrom1: map['deliveryhoursfrom1'],
      deliveryhoursto1: map['deliveryhoursto1'],
      deliveryhoursfrom2: map['deliveryhoursfrom2'],
      deliveryhoursto2: map['deliveryhoursto2'],
      calculatetaxonpacking: map['calculatetaxonpacking']?.toInt(),
      calculatetaxondelivery: map['calculatetaxondelivery']?.toInt(),
      packaging_applicable_on: map['packaging_applicable_on'],
      packaging_charge: map['packaging_charge'],
      packaging_charge_type: map['packaging_charge_type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Details.fromJson(String source) =>
      Details.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Details(menusharingcode: $menusharingcode, country: $country, images: $images, restaurantname: $restaurantname, address: $address, contact: $contact, latitude: $latitude, longitude: $longitude, landmark: $landmark, city: $city, state: $state, minimumorderamount: $minimumorderamount, minimumdeliverytime: $minimumdeliverytime, deliverycharge: $deliverycharge, deliveryhoursfrom1: $deliveryhoursfrom1, deliveryhoursto1: $deliveryhoursto1, deliveryhoursfrom2: $deliveryhoursfrom2, deliveryhoursto2: $deliveryhoursto2, calculatetaxonpacking: $calculatetaxonpacking, calculatetaxondelivery: $calculatetaxondelivery, packaging_applicable_on: $packaging_applicable_on, packaging_charge: $packaging_charge, packaging_charge_type: $packaging_charge_type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Details &&
        other.menusharingcode == menusharingcode &&
        other.country == country &&
        listEquals(other.images, images) &&
        other.restaurantname == restaurantname &&
        other.address == address &&
        other.contact == contact &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.landmark == landmark &&
        other.city == city &&
        other.state == state &&
        other.minimumorderamount == minimumorderamount &&
        other.minimumdeliverytime == minimumdeliverytime &&
        other.deliverycharge == deliverycharge &&
        other.deliveryhoursfrom1 == deliveryhoursfrom1 &&
        other.deliveryhoursto1 == deliveryhoursto1 &&
        other.deliveryhoursfrom2 == deliveryhoursfrom2 &&
        other.deliveryhoursto2 == deliveryhoursto2 &&
        other.calculatetaxonpacking == calculatetaxonpacking &&
        other.calculatetaxondelivery == calculatetaxondelivery &&
        other.packaging_applicable_on == packaging_applicable_on &&
        other.packaging_charge == packaging_charge &&
        other.packaging_charge_type == packaging_charge_type;
  }

  @override
  int get hashCode {
    return menusharingcode.hashCode ^
        country.hashCode ^
        images.hashCode ^
        restaurantname.hashCode ^
        address.hashCode ^
        contact.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        landmark.hashCode ^
        city.hashCode ^
        state.hashCode ^
        minimumorderamount.hashCode ^
        minimumdeliverytime.hashCode ^
        deliverycharge.hashCode ^
        deliveryhoursfrom1.hashCode ^
        deliveryhoursto1.hashCode ^
        deliveryhoursfrom2.hashCode ^
        deliveryhoursto2.hashCode ^
        calculatetaxonpacking.hashCode ^
        calculatetaxondelivery.hashCode ^
        packaging_applicable_on.hashCode ^
        packaging_charge.hashCode ^
        packaging_charge_type.hashCode;
  }
}

class Ordertype {
  final int ordertypeid;
  final String ordertype;
  Ordertype({
    required this.ordertypeid,
    required this.ordertype,
  });

  Ordertype copyWith({
    int? ordertypeid,
    String? ordertype,
  }) {
    return Ordertype(
      ordertypeid: ordertypeid ?? this.ordertypeid,
      ordertype: ordertype ?? this.ordertype,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ordertypeid': ordertypeid,
      'ordertype': ordertype,
    };
  }

  factory Ordertype.fromMap(Map<String, dynamic> map) {
    return Ordertype(
      ordertypeid: map['ordertypeid']?.toInt(),
      ordertype: map['ordertype'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ordertype.fromJson(String source) =>
      Ordertype.fromMap(json.decode(source));

  @override
  String toString() =>
      'Ordertype(ordertypeid: $ordertypeid, ordertype: $ordertype)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Ordertype &&
        other.ordertypeid == ordertypeid &&
        other.ordertype == ordertype;
  }

  @override
  int get hashCode => ordertypeid.hashCode ^ ordertype.hashCode;
}

class Categorie {
  final String categoryid;
  final String active;
  final String categoryrank;
  final String parent_category_id;
  final String categoryname;
  final String categorytimings;
  final String category_image_url;
  Categorie({
    required this.categoryid,
    required this.active,
    required this.categoryrank,
    required this.parent_category_id,
    required this.categoryname,
    required this.categorytimings,
    required this.category_image_url,
  });

  Categorie copyWith({
    String? categoryid,
    String? active,
    String? categoryrank,
    String? parent_category_id,
    String? categoryname,
    String? categorytimings,
    String? category_image_url,
  }) {
    return Categorie(
      categoryid: categoryid ?? this.categoryid,
      active: active ?? this.active,
      categoryrank: categoryrank ?? this.categoryrank,
      parent_category_id: parent_category_id ?? this.parent_category_id,
      categoryname: categoryname ?? this.categoryname,
      categorytimings: categorytimings ?? this.categorytimings,
      category_image_url: category_image_url ?? this.category_image_url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryid': categoryid,
      'active': active,
      'categoryrank': categoryrank,
      'parent_category_id': parent_category_id,
      'categoryname': categoryname,
      'categorytimings': categorytimings,
      'category_image_url': category_image_url,
    };
  }

  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      categoryid: map['categoryid'],
      active: map['active'],
      categoryrank: map['categoryrank'],
      parent_category_id: map['parent_category_id'],
      categoryname: map['categoryname'],
      categorytimings: map['categorytimings'],
      category_image_url: map['category_image_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Categorie.fromJson(String source) =>
      Categorie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Categorie(categoryid: $categoryid, active: $active, categoryrank: $categoryrank, parent_category_id: $parent_category_id, categoryname: $categoryname, categorytimings: $categorytimings, category_image_url: $category_image_url)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Categorie &&
        other.categoryid == categoryid &&
        other.active == active &&
        other.categoryrank == categoryrank &&
        other.parent_category_id == parent_category_id &&
        other.categoryname == categoryname &&
        other.categorytimings == categorytimings &&
        other.category_image_url == category_image_url;
  }

  @override
  int get hashCode {
    return categoryid.hashCode ^
        active.hashCode ^
        categoryrank.hashCode ^
        parent_category_id.hashCode ^
        categoryname.hashCode ^
        categorytimings.hashCode ^
        category_image_url.hashCode;
  }
}

class Parentcategorie {
  final String name;
  final String rank;
  final String image_url;
  final String status;
  final String id;
  Parentcategorie({
    required this.name,
    required this.rank,
    required this.image_url,
    required this.status,
    required this.id,
  });

  Parentcategorie copyWith({
    String? name,
    String? rank,
    String? image_url,
    String? status,
    String? id,
  }) {
    return Parentcategorie(
      name: name ?? this.name,
      rank: rank ?? this.rank,
      image_url: image_url ?? this.image_url,
      status: status ?? this.status,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'rank': rank,
      'image_url': image_url,
      'status': status,
      'id': id,
    };
  }

  factory Parentcategorie.fromMap(Map<String, dynamic> map) {
    return Parentcategorie(
      name: map['name'],
      rank: map['rank'],
      image_url: map['image_url'],
      status: map['status'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Parentcategorie.fromJson(String source) =>
      Parentcategorie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Parentcategorie(name: $name, rank: $rank, image_url: $image_url, status: $status, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Parentcategorie &&
        other.name == name &&
        other.rank == rank &&
        other.image_url == image_url &&
        other.status == status &&
        other.id == id;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        rank.hashCode ^
        image_url.hashCode ^
        status.hashCode ^
        id.hashCode;
  }
}

class Item {
  final String itemid;
  final String itemallowvariation;
  final String itemrank;
  final String item_categoryid;
  final String item_ordertype;
  final String item_packingcharges;
  final String itemallowaddon;
  final String itemaddonbasedon;
  final String item_favorite;
  final String ignore_taxes;
  final String ignore_discounts;
  final String in_stock;
  final List<dynamic> variation;
  final List<Addon> addon;
  final String itemname;
  final String item_attributeid;
  final String itemdescription;
  final String minimumpreparationtime;
  final String price;
  final String active;
  final String item_image_url;
  final String item_tax;
  Item({
    required this.itemid,
    required this.itemallowvariation,
    required this.itemrank,
    required this.item_categoryid,
    required this.item_ordertype,
    required this.item_packingcharges,
    required this.itemallowaddon,
    required this.itemaddonbasedon,
    required this.item_favorite,
    required this.ignore_taxes,
    required this.ignore_discounts,
    required this.in_stock,
    required this.variation,
    required this.addon,
    required this.itemname,
    required this.item_attributeid,
    required this.itemdescription,
    required this.minimumpreparationtime,
    required this.price,
    required this.active,
    required this.item_image_url,
    required this.item_tax,
  });

  Item copyWith({
    String? itemid,
    String? itemallowvariation,
    String? itemrank,
    String? item_categoryid,
    String? item_ordertype,
    String? item_packingcharges,
    String? itemallowaddon,
    String? itemaddonbasedon,
    String? item_favorite,
    String? ignore_taxes,
    String? ignore_discounts,
    String? in_stock,
    List<dynamic>? variation,
    List<Addon>? addon,
    String? itemname,
    String? item_attributeid,
    String? itemdescription,
    String? minimumpreparationtime,
    String? price,
    String? active,
    String? item_image_url,
    String? item_tax,
  }) {
    return Item(
      itemid: itemid ?? this.itemid,
      itemallowvariation: itemallowvariation ?? this.itemallowvariation,
      itemrank: itemrank ?? this.itemrank,
      item_categoryid: item_categoryid ?? this.item_categoryid,
      item_ordertype: item_ordertype ?? this.item_ordertype,
      item_packingcharges: item_packingcharges ?? this.item_packingcharges,
      itemallowaddon: itemallowaddon ?? this.itemallowaddon,
      itemaddonbasedon: itemaddonbasedon ?? this.itemaddonbasedon,
      item_favorite: item_favorite ?? this.item_favorite,
      ignore_taxes: ignore_taxes ?? this.ignore_taxes,
      ignore_discounts: ignore_discounts ?? this.ignore_discounts,
      in_stock: in_stock ?? this.in_stock,
      variation: variation ?? this.variation,
      addon: addon ?? this.addon,
      itemname: itemname ?? this.itemname,
      item_attributeid: item_attributeid ?? this.item_attributeid,
      itemdescription: itemdescription ?? this.itemdescription,
      minimumpreparationtime:
          minimumpreparationtime ?? this.minimumpreparationtime,
      price: price ?? this.price,
      active: active ?? this.active,
      item_image_url: item_image_url ?? this.item_image_url,
      item_tax: item_tax ?? this.item_tax,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemid': itemid,
      'itemallowvariation': itemallowvariation,
      'itemrank': itemrank,
      'item_categoryid': item_categoryid,
      'item_ordertype': item_ordertype,
      'item_packingcharges': item_packingcharges,
      'itemallowaddon': itemallowaddon,
      'itemaddonbasedon': itemaddonbasedon,
      'item_favorite': item_favorite,
      'ignore_taxes': ignore_taxes,
      'ignore_discounts': ignore_discounts,
      'in_stock': in_stock,
      'variation': variation,
      'addon': addon.map((x) => x.toMap()).toList(),
      'itemname': itemname,
      'item_attributeid': item_attributeid,
      'itemdescription': itemdescription,
      'minimumpreparationtime': minimumpreparationtime,
      'price': price,
      'active': active,
      'item_image_url': item_image_url,
      'item_tax': item_tax,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      itemid: map['itemid'],
      itemallowvariation: map['itemallowvariation'],
      itemrank: map['itemrank'],
      item_categoryid: map['item_categoryid'],
      item_ordertype: map['item_ordertype'],
      item_packingcharges: map['item_packingcharges'],
      itemallowaddon: map['itemallowaddon'],
      itemaddonbasedon: map['itemaddonbasedon'],
      item_favorite: map['item_favorite'],
      ignore_taxes: map['ignore_taxes'],
      ignore_discounts: map['ignore_discounts'],
      in_stock: map['in_stock'],
      variation: List<dynamic>.from(map['variation']),
      addon: List<Addon>.from(map['addon']?.map((x) => Addon.fromMap(x))),
      itemname: map['itemname'],
      item_attributeid: map['item_attributeid'],
      itemdescription: map['itemdescription'],
      minimumpreparationtime: map['minimumpreparationtime'],
      price: map['price'],
      active: map['active'],
      item_image_url: map['item_image_url'],
      item_tax: map['item_tax'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(itemid: $itemid, itemallowvariation: $itemallowvariation, itemrank: $itemrank, item_categoryid: $item_categoryid, item_ordertype: $item_ordertype, item_packingcharges: $item_packingcharges, itemallowaddon: $itemallowaddon, itemaddonbasedon: $itemaddonbasedon, item_favorite: $item_favorite, ignore_taxes: $ignore_taxes, ignore_discounts: $ignore_discounts, in_stock: $in_stock, variation: $variation, addon: $addon, itemname: $itemname, item_attributeid: $item_attributeid, itemdescription: $itemdescription, minimumpreparationtime: $minimumpreparationtime, price: $price, active: $active, item_image_url: $item_image_url, item_tax: $item_tax)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.itemid == itemid &&
        other.itemallowvariation == itemallowvariation &&
        other.itemrank == itemrank &&
        other.item_categoryid == item_categoryid &&
        other.item_ordertype == item_ordertype &&
        other.item_packingcharges == item_packingcharges &&
        other.itemallowaddon == itemallowaddon &&
        other.itemaddonbasedon == itemaddonbasedon &&
        other.item_favorite == item_favorite &&
        other.ignore_taxes == ignore_taxes &&
        other.ignore_discounts == ignore_discounts &&
        other.in_stock == in_stock &&
        listEquals(other.variation, variation) &&
        listEquals(other.addon, addon) &&
        other.itemname == itemname &&
        other.item_attributeid == item_attributeid &&
        other.itemdescription == itemdescription &&
        other.minimumpreparationtime == minimumpreparationtime &&
        other.price == price &&
        other.active == active &&
        other.item_image_url == item_image_url &&
        other.item_tax == item_tax;
  }

  @override
  int get hashCode {
    return itemid.hashCode ^
        itemallowvariation.hashCode ^
        itemrank.hashCode ^
        item_categoryid.hashCode ^
        item_ordertype.hashCode ^
        item_packingcharges.hashCode ^
        itemallowaddon.hashCode ^
        itemaddonbasedon.hashCode ^
        item_favorite.hashCode ^
        ignore_taxes.hashCode ^
        ignore_discounts.hashCode ^
        in_stock.hashCode ^
        variation.hashCode ^
        addon.hashCode ^
        itemname.hashCode ^
        item_attributeid.hashCode ^
        itemdescription.hashCode ^
        minimumpreparationtime.hashCode ^
        price.hashCode ^
        active.hashCode ^
        item_image_url.hashCode ^
        item_tax.hashCode;
  }
}

class Addon {
  final String addon_group_id;
  final String addon_item_selection_min;
  final String addon_item_selection_max;
  Addon({
    required this.addon_group_id,
    required this.addon_item_selection_min,
    required this.addon_item_selection_max,
  });

  Addon copyWith({
    String? addon_group_id,
    String? addon_item_selection_min,
    String? addon_item_selection_max,
  }) {
    return Addon(
      addon_group_id: addon_group_id ?? this.addon_group_id,
      addon_item_selection_min:
          addon_item_selection_min ?? this.addon_item_selection_min,
      addon_item_selection_max:
          addon_item_selection_max ?? this.addon_item_selection_max,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addon_group_id': addon_group_id,
      'addon_item_selection_min': addon_item_selection_min,
      'addon_item_selection_max': addon_item_selection_max,
    };
  }

  factory Addon.fromMap(Map<String, dynamic> map) {
    return Addon(
      addon_group_id: map['addon_group_id'],
      addon_item_selection_min: map['addon_item_selection_min'],
      addon_item_selection_max: map['addon_item_selection_max'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Addon.fromJson(String source) => Addon.fromMap(json.decode(source));

  @override
  String toString() =>
      'Addon(addon_group_id: $addon_group_id, addon_item_selection_min: $addon_item_selection_min, addon_item_selection_max: $addon_item_selection_max)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Addon &&
        other.addon_group_id == addon_group_id &&
        other.addon_item_selection_min == addon_item_selection_min &&
        other.addon_item_selection_max == addon_item_selection_max;
  }

  @override
  int get hashCode =>
      addon_group_id.hashCode ^
      addon_item_selection_min.hashCode ^
      addon_item_selection_max.hashCode;
}

class Variation {
  final String variationid;
  final String name;
  final String groupname;
  final String status;
  Variation({
    required this.variationid,
    required this.name,
    required this.groupname,
    required this.status,
  });

  Variation copyWith({
    String? variationid,
    String? name,
    String? groupname,
    String? status,
  }) {
    return Variation(
      variationid: variationid ?? this.variationid,
      name: name ?? this.name,
      groupname: groupname ?? this.groupname,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'variationid': variationid,
      'name': name,
      'groupname': groupname,
      'status': status,
    };
  }

  factory Variation.fromMap(Map<String, dynamic> map) {
    return Variation(
      variationid: map['variationid'],
      name: map['name'],
      groupname: map['groupname'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Variation.fromJson(String source) =>
      Variation.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Variation(variationid: $variationid, name: $name, groupname: $groupname, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Variation &&
        other.variationid == variationid &&
        other.name == name &&
        other.groupname == groupname &&
        other.status == status;
  }

  @override
  int get hashCode {
    return variationid.hashCode ^
        name.hashCode ^
        groupname.hashCode ^
        status.hashCode;
  }
}

class Addongroup {
  final String addongroupid;
  final String addongroup_rank;
  final String active;
  final List<Addongroupitem> addongroupitems;
  final String addongroup_name;
  Addongroup({
    required this.addongroupid,
    required this.addongroup_rank,
    required this.active,
    required this.addongroupitems,
    required this.addongroup_name,
  });

  Addongroup copyWith({
    String? addongroupid,
    String? addongroup_rank,
    String? active,
    List<Addongroupitem>? addongroupitems,
    String? addongroup_name,
  }) {
    return Addongroup(
      addongroupid: addongroupid ?? this.addongroupid,
      addongroup_rank: addongroup_rank ?? this.addongroup_rank,
      active: active ?? this.active,
      addongroupitems: addongroupitems ?? this.addongroupitems,
      addongroup_name: addongroup_name ?? this.addongroup_name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addongroupid': addongroupid,
      'addongroup_rank': addongroup_rank,
      'active': active,
      'addongroupitems': addongroupitems.map((x) => x.toMap()).toList(),
      'addongroup_name': addongroup_name,
    };
  }

  factory Addongroup.fromMap(Map<String, dynamic> map) {
    return Addongroup(
      addongroupid: map['addongroupid'],
      addongroup_rank: map['addongroup_rank'],
      active: map['active'],
      addongroupitems: List<Addongroupitem>.from(
          map['addongroupitems']?.map((x) => Addongroupitem.fromMap(x))),
      addongroup_name: map['addongroup_name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Addongroup.fromJson(String source) =>
      Addongroup.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Addongroup(addongroupid: $addongroupid, addongroup_rank: $addongroup_rank, active: $active, addongroupitems: $addongroupitems, addongroup_name: $addongroup_name)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Addongroup &&
        other.addongroupid == addongroupid &&
        other.addongroup_rank == addongroup_rank &&
        other.active == active &&
        listEquals(other.addongroupitems, addongroupitems) &&
        other.addongroup_name == addongroup_name;
  }

  @override
  int get hashCode {
    return addongroupid.hashCode ^
        addongroup_rank.hashCode ^
        active.hashCode ^
        addongroupitems.hashCode ^
        addongroup_name.hashCode;
  }
}

class Addongroupitem {
  final String addonitemid;
  final String addonitem_name;
  final String addonitem_price;
  final String active;
  final String attributes;
  final String addonitem_rank;
  Addongroupitem({
    required this.addonitemid,
    required this.addonitem_name,
    required this.addonitem_price,
    required this.active,
    required this.attributes,
    required this.addonitem_rank,
  });

  Addongroupitem copyWith({
    String? addonitemid,
    String? addonitem_name,
    String? addonitem_price,
    String? active,
    String? attributes,
    String? addonitem_rank,
  }) {
    return Addongroupitem(
      addonitemid: addonitemid ?? this.addonitemid,
      addonitem_name: addonitem_name ?? this.addonitem_name,
      addonitem_price: addonitem_price ?? this.addonitem_price,
      active: active ?? this.active,
      attributes: attributes ?? this.attributes,
      addonitem_rank: addonitem_rank ?? this.addonitem_rank,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addonitemid': addonitemid,
      'addonitem_name': addonitem_name,
      'addonitem_price': addonitem_price,
      'active': active,
      'attributes': attributes,
      'addonitem_rank': addonitem_rank,
    };
  }

  factory Addongroupitem.fromMap(Map<String, dynamic> map) {
    return Addongroupitem(
      addonitemid: map['addonitemid'],
      addonitem_name: map['addonitem_name'],
      addonitem_price: map['addonitem_price'],
      active: map['active'],
      attributes: map['attributes'],
      addonitem_rank: map['addonitem_rank'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Addongroupitem.fromJson(String source) =>
      Addongroupitem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Addongroupitem(addonitemid: $addonitemid, addonitem_name: $addonitem_name, addonitem_price: $addonitem_price, active: $active, attributes: $attributes, addonitem_rank: $addonitem_rank)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Addongroupitem &&
        other.addonitemid == addonitemid &&
        other.addonitem_name == addonitem_name &&
        other.addonitem_price == addonitem_price &&
        other.active == active &&
        other.attributes == attributes &&
        other.addonitem_rank == addonitem_rank;
  }

  @override
  int get hashCode {
    return addonitemid.hashCode ^
        addonitem_name.hashCode ^
        addonitem_price.hashCode ^
        active.hashCode ^
        attributes.hashCode ^
        addonitem_rank.hashCode;
  }
}

class Attribute {
  final String attributeid;
  final String attribute;
  final String active;
  Attribute({
    required this.attributeid,
    required this.attribute,
    required this.active,
  });

  Attribute copyWith({
    String? attributeid,
    String? attribute,
    String? active,
  }) {
    return Attribute(
      attributeid: attributeid ?? this.attributeid,
      attribute: attribute ?? this.attribute,
      active: active ?? this.active,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'attributeid': attributeid,
      'attribute': attribute,
      'active': active,
    };
  }

  factory Attribute.fromMap(Map<String, dynamic> map) {
    return Attribute(
      attributeid: map['attributeid'],
      attribute: map['attribute'],
      active: map['active'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Attribute.fromJson(String source) =>
      Attribute.fromMap(json.decode(source));

  @override
  String toString() =>
      'Attribute(attributeid: $attributeid, attribute: $attribute, active: $active)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Attribute &&
        other.attributeid == attributeid &&
        other.attribute == attribute &&
        other.active == active;
  }

  @override
  int get hashCode =>
      attributeid.hashCode ^ attribute.hashCode ^ active.hashCode;
}

class Discount {
  final String discountid;
  final String discountname;
  final String discounttype;
  final String discount;
  final String discountordertype;
  final String discountapplicableon;
  final String discountdays;
  final String active;
  final String discountontotal;
  final String discountstarts;
  final String discountends;
  final String discounttimefrom;
  final String discounttimeto;
  final String discountminamount;
  final String discountmaxamount;
  final String discounthascoupon;
  final String discountcategoryitemids;
  final String discountmaxlimit;
  Discount({
    required this.discountid,
    required this.discountname,
    required this.discounttype,
    required this.discount,
    required this.discountordertype,
    required this.discountapplicableon,
    required this.discountdays,
    required this.active,
    required this.discountontotal,
    required this.discountstarts,
    required this.discountends,
    required this.discounttimefrom,
    required this.discounttimeto,
    required this.discountminamount,
    required this.discountmaxamount,
    required this.discounthascoupon,
    required this.discountcategoryitemids,
    required this.discountmaxlimit,
  });

  Discount copyWith({
    String? discountid,
    String? discountname,
    String? discounttype,
    String? discount,
    String? discountordertype,
    String? discountapplicableon,
    String? discountdays,
    String? active,
    String? discountontotal,
    String? discountstarts,
    String? discountends,
    String? discounttimefrom,
    String? discounttimeto,
    String? discountminamount,
    String? discountmaxamount,
    String? discounthascoupon,
    String? discountcategoryitemids,
    String? discountmaxlimit,
  }) {
    return Discount(
      discountid: discountid ?? this.discountid,
      discountname: discountname ?? this.discountname,
      discounttype: discounttype ?? this.discounttype,
      discount: discount ?? this.discount,
      discountordertype: discountordertype ?? this.discountordertype,
      discountapplicableon: discountapplicableon ?? this.discountapplicableon,
      discountdays: discountdays ?? this.discountdays,
      active: active ?? this.active,
      discountontotal: discountontotal ?? this.discountontotal,
      discountstarts: discountstarts ?? this.discountstarts,
      discountends: discountends ?? this.discountends,
      discounttimefrom: discounttimefrom ?? this.discounttimefrom,
      discounttimeto: discounttimeto ?? this.discounttimeto,
      discountminamount: discountminamount ?? this.discountminamount,
      discountmaxamount: discountmaxamount ?? this.discountmaxamount,
      discounthascoupon: discounthascoupon ?? this.discounthascoupon,
      discountcategoryitemids:
          discountcategoryitemids ?? this.discountcategoryitemids,
      discountmaxlimit: discountmaxlimit ?? this.discountmaxlimit,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'discountid': discountid,
      'discountname': discountname,
      'discounttype': discounttype,
      'discount': discount,
      'discountordertype': discountordertype,
      'discountapplicableon': discountapplicableon,
      'discountdays': discountdays,
      'active': active,
      'discountontotal': discountontotal,
      'discountstarts': discountstarts,
      'discountends': discountends,
      'discounttimefrom': discounttimefrom,
      'discounttimeto': discounttimeto,
      'discountminamount': discountminamount,
      'discountmaxamount': discountmaxamount,
      'discounthascoupon': discounthascoupon,
      'discountcategoryitemids': discountcategoryitemids,
      'discountmaxlimit': discountmaxlimit,
    };
  }

  factory Discount.fromMap(Map<String, dynamic> map) {
    return Discount(
      discountid: map['discountid'],
      discountname: map['discountname'],
      discounttype: map['discounttype'],
      discount: map['discount'],
      discountordertype: map['discountordertype'],
      discountapplicableon: map['discountapplicableon'],
      discountdays: map['discountdays'],
      active: map['active'],
      discountontotal: map['discountontotal'],
      discountstarts: map['discountstarts'],
      discountends: map['discountends'],
      discounttimefrom: map['discounttimefrom'],
      discounttimeto: map['discounttimeto'],
      discountminamount: map['discountminamount'],
      discountmaxamount: map['discountmaxamount'],
      discounthascoupon: map['discounthascoupon'],
      discountcategoryitemids: map['discountcategoryitemids'],
      discountmaxlimit: map['discountmaxlimit'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Discount.fromJson(String source) =>
      Discount.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Discount(discountid: $discountid, discountname: $discountname, discounttype: $discounttype, discount: $discount, discountordertype: $discountordertype, discountapplicableon: $discountapplicableon, discountdays: $discountdays, active: $active, discountontotal: $discountontotal, discountstarts: $discountstarts, discountends: $discountends, discounttimefrom: $discounttimefrom, discounttimeto: $discounttimeto, discountminamount: $discountminamount, discountmaxamount: $discountmaxamount, discounthascoupon: $discounthascoupon, discountcategoryitemids: $discountcategoryitemids, discountmaxlimit: $discountmaxlimit)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Discount &&
        other.discountid == discountid &&
        other.discountname == discountname &&
        other.discounttype == discounttype &&
        other.discount == discount &&
        other.discountordertype == discountordertype &&
        other.discountapplicableon == discountapplicableon &&
        other.discountdays == discountdays &&
        other.active == active &&
        other.discountontotal == discountontotal &&
        other.discountstarts == discountstarts &&
        other.discountends == discountends &&
        other.discounttimefrom == discounttimefrom &&
        other.discounttimeto == discounttimeto &&
        other.discountminamount == discountminamount &&
        other.discountmaxamount == discountmaxamount &&
        other.discounthascoupon == discounthascoupon &&
        other.discountcategoryitemids == discountcategoryitemids &&
        other.discountmaxlimit == discountmaxlimit;
  }

  @override
  int get hashCode {
    return discountid.hashCode ^
        discountname.hashCode ^
        discounttype.hashCode ^
        discount.hashCode ^
        discountordertype.hashCode ^
        discountapplicableon.hashCode ^
        discountdays.hashCode ^
        active.hashCode ^
        discountontotal.hashCode ^
        discountstarts.hashCode ^
        discountends.hashCode ^
        discounttimefrom.hashCode ^
        discounttimeto.hashCode ^
        discountminamount.hashCode ^
        discountmaxamount.hashCode ^
        discounthascoupon.hashCode ^
        discountcategoryitemids.hashCode ^
        discountmaxlimit.hashCode;
  }
}

class Taxe {
  final String taxid;
  final String taxname;
  final String tax;
  final String taxtype;
  final String tax_ordertype;
  final String active;
  final String tax_coreortotal;
  final String tax_taxtype;
  final String rank;
  final String description;
  Taxe({
    required this.taxid,
    required this.taxname,
    required this.tax,
    required this.taxtype,
    required this.tax_ordertype,
    required this.active,
    required this.tax_coreortotal,
    required this.tax_taxtype,
    required this.rank,
    required this.description,
  });

  Taxe copyWith({
    String? taxid,
    String? taxname,
    String? tax,
    String? taxtype,
    String? tax_ordertype,
    String? active,
    String? tax_coreortotal,
    String? tax_taxtype,
    String? rank,
    String? description,
  }) {
    return Taxe(
      taxid: taxid ?? this.taxid,
      taxname: taxname ?? this.taxname,
      tax: tax ?? this.tax,
      taxtype: taxtype ?? this.taxtype,
      tax_ordertype: tax_ordertype ?? this.tax_ordertype,
      active: active ?? this.active,
      tax_coreortotal: tax_coreortotal ?? this.tax_coreortotal,
      tax_taxtype: tax_taxtype ?? this.tax_taxtype,
      rank: rank ?? this.rank,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'taxid': taxid,
      'taxname': taxname,
      'tax': tax,
      'taxtype': taxtype,
      'tax_ordertype': tax_ordertype,
      'active': active,
      'tax_coreortotal': tax_coreortotal,
      'tax_taxtype': tax_taxtype,
      'rank': rank,
      'description': description,
    };
  }

  factory Taxe.fromMap(Map<String, dynamic> map) {
    return Taxe(
      taxid: map['taxid'],
      taxname: map['taxname'],
      tax: map['tax'],
      taxtype: map['taxtype'],
      tax_ordertype: map['tax_ordertype'],
      active: map['active'],
      tax_coreortotal: map['tax_coreortotal'],
      tax_taxtype: map['tax_taxtype'],
      rank: map['rank'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Taxe.fromJson(String source) => Taxe.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Taxe(taxid: $taxid, taxname: $taxname, tax: $tax, taxtype: $taxtype, tax_ordertype: $tax_ordertype, active: $active, tax_coreortotal: $tax_coreortotal, tax_taxtype: $tax_taxtype, rank: $rank, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Taxe &&
        other.taxid == taxid &&
        other.taxname == taxname &&
        other.tax == tax &&
        other.taxtype == taxtype &&
        other.tax_ordertype == tax_ordertype &&
        other.active == active &&
        other.tax_coreortotal == tax_coreortotal &&
        other.tax_taxtype == tax_taxtype &&
        other.rank == rank &&
        other.description == description;
  }

  @override
  int get hashCode {
    return taxid.hashCode ^
        taxname.hashCode ^
        tax.hashCode ^
        taxtype.hashCode ^
        tax_ordertype.hashCode ^
        active.hashCode ^
        tax_coreortotal.hashCode ^
        tax_taxtype.hashCode ^
        rank.hashCode ^
        description.hashCode;
  }
}
