import 'item.dart';

class ItemListModel {
  List<Item>? items;

  ItemListModel({this.items});

  factory ItemListModel.fromJson(Map<String, dynamic> json) {
    return ItemListModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items?.map((e) => e.toJson()).toList(),
    };
  }
}
