import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_app/main.dart';

void one() {
  runApp(const One());
}

class One extends StatefulWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Day one",
    );
  }
}
