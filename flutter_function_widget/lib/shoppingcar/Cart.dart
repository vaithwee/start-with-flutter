import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_function_widget/shoppingcar/Item.dart';

class Cart extends ChangeNotifier {
	final List<Item> _items = [];
	UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
	
	double get totlePrice => _items.fold(0, (value, item) => value + item.count * item.price);
	
	void add(Item item) {
		_items.add(item);
		notifyListeners();
	}
}