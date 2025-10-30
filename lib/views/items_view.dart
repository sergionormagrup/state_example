import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_example/viewmodels/items_viewmodel.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista Filtrable"),
      ),
      body: Consumer<ItemsViewModel>(
        builder: (context, viewModel, child) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "Filtrar elementos...",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => viewModel.filterItems(value),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.filteredItems.length,
                  itemBuilder: (context, index) {
                    final item = viewModel.filteredItems[index];
                    return ListTile(
                      title: Text(item),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
