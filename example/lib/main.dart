import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _currentColor = Color(0xff7d7dff);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: _currentColor,
          title: const Text('Circle color picker sample'),
        ),
        body: Center(child: _createColorPicker()),
      ),
    );
  }

  void _onColorChanged(Color color) {
    setState(() => _currentColor = color);
  }

  CircleColorPicker _createColorPicker() =>
      CircleColorPicker(
        initialColor: _currentColor,
        circleConfig: _createCircleConfig(),
        sliderConfig: _createSliderConfig(),
        onChanged: _onColorChanged,
      );

  ColorPickerCircleConfig _createCircleConfig() =>
      ColorPickerCircleConfig(
          size: Size(320, 320),
          strokeWidth: 6,
          thumbSize: 32,
          spaceHeight: 48
      );

  ColorPickerSliderConfig _createSliderConfig() =>
      ColorPickerSliderConfig(
          width: 180,
          strokeWidth: 6,
          thumbSize: 26
      );
}
