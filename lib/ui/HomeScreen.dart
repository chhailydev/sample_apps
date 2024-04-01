import 'package:flutter/material.dart';
import 'package:sample_app/ui/ScreenOne.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenOne()),
            );
          },
          child: const Text("Go to Screen one"),
        ),
      ),
    );
  }
}
