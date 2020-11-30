# Flutter HSV-based circle color picker
A HSV-based circle color picker for flutter based on [itome's color picker](https://github.com/itome/flutter_circle_color_picker).

## Usage

```dart

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

```

## API

#### ColorPickerCircleConfig

```dart
  /// The size of widget.
  /// Draggable area is thumb widget is included to the size,
  /// so circle is smaller than the size.
  ///
  /// Default value is 320 x 320.
  final Size size;

  /// The width of circle border.
  ///
  /// Default value is 6.
  final double strokeWidth;

  /// The size of thumb for circle picker.
  ///
  /// Default value is 32.
  final double thumbSize;

  /// The height of space between sliders.
  ///
  /// Default value is 48.
  final double spaceHeight;
```

#### ColorPickerSliderConfig
```dart
  /// The width of slider.
  ///
  /// Default value is 180.
  final double width;

  /// The width of border.
  ///
  /// Default value is 6.
  final double strokeWidth;

  /// The size of thumb for circle picker.
  ///
  /// Default value is 26.
  final double thumbSize;
```

#### CircleColorPicker

```dart
    /// Called during a drag when the user is selecting a color.
    ///
    /// This callback called with latest color that user selected.
    final ValueChanged<Color> onChanged;
  
    /// Config for hue circle.
    final ColorPickerCircleConfig circleConfig;
  
    /// Config for value and saturation sliders.
    final ColorPickerSliderConfig sliderConfig;
  
    /// Initial color for picker.
    /// [onChanged] callback won't be called with initial value.
    ///
    /// Default value is Red.
    final Color initialColor;
```
