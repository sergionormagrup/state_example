import 'package:flutter/material.dart';

class ItemsViewModel extends ChangeNotifier {
  // Lista de todos los elementos
  final List<String> _allItems = [
    "Manzana",
    "Banana",
    "Cereza",
    "Melón",
    "Mango",
    "Pera",
    "Sandía",
  ];

  // Lista de elementos filtrados
  List<String> _filteredItems = [];

  // Getters
  List<String> get filteredItems => _filteredItems;

  // Primera carga de datos
  ItemsViewModel() {
    _filteredItems = List.from(_allItems);
  }

  // Métodos
  void filterItems(String query) {
    if (query.isEmpty) {
      _filteredItems = List.from(_allItems);
    } else {
      _filteredItems = _allItems.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    }
    notifyListeners();
  }
}