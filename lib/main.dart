import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_example/viewmodels/items_viewmodel.dart';
import 'package:state_example/views/items_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemsViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemsView(),
    );
  }
}