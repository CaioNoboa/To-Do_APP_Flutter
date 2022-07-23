import 'package:afazeres/models/standard_list.dart';
import 'package:flutter/material.dart';

class StandardListModel {
  List<StandardList> items;
  StandardListModel({Key? key, required this.items});

  void addItem(StandardList item) {
    items.add(item);
  }
}
