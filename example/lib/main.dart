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
        body: Center(
          child: CircleColorPicker(
            initialColor: _currentColor,
            circleConfig: _createCircleConfig(),
            sliderConfig: _createSliderConfig(),
            onChanged: _onColorChanged,
          ),
        ),
      ),
    );
  }

  void _onColorChanged(Color color) {
    setState(() => _currentColor = color);
  }

  ColorPickerCircleConfig _createCircleConfig() => ColorPickerCircleConfig();

  ColorPickerSliderConfig _createSliderConfig() => ColorPickerSliderConfig();
}
