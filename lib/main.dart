import 'package:flutter/material.dart';

import 'gradient_container.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(123, 119, 159, 91),
          Color.fromARGB(178, 4, 67, 4)),
      ),
    ),
  );
}
