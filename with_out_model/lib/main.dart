import 'package:flutter/material.dart';
import 'package:with_out_model/views/home.dart';
import 'package:with_out_model/views/multiple_dataset.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultipleDataset()
    );
  }
}