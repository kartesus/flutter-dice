import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GrandientContainer(
        Color.fromARGB(255, 168, 54, 244),
        Color.fromARGB(255, 114, 8, 146),
      ),
    ),
  ));
}
