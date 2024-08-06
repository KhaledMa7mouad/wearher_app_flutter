import 'package:flutter/material.dart';
import 'package:wheatherapp/main.dart';
import 'package:wheatherapp/views/home_view.dart';

void main() {
  runApp(WheatherApp());
}
class WheatherApp extends StatelessWidget {
  const WheatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView() ,
    );
  }
}






