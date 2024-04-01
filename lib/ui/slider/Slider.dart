import "package:flutter/material.dart";

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<SliderExample> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Slider value: $_sliderValue"),
            const SizedBox(height: 20),
            Slider(
              value: _sliderValue,
              min: 0.0,
              max: 100.0,
              divisions: 100,
              label: '$_sliderValue',
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
