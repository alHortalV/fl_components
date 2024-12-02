import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final double _valueMin = 0;
  final double _valueMax = 100;
  double _sliderValue = 50;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(children: [
        Slider.adaptive(
            min: _valueMin,
            max: _valueMax,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            })
      ]),
    );
  }
}
