import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      showPerformanceOverlay: true,
      home: Scaffold(
        body: GradientContainer.purple(),
      ),
    ),
  );
}
