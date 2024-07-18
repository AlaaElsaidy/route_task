import 'package:flutter/material.dart';
import 'package:task/config.dart';

import 'Products Screen/presentation/pages/product_details.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductDetails()
    );
  }
}

