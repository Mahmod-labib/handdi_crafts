import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key});

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    Color selectedColor = Colors.blue; // Default color

    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Display the selected color// Color Picker
          BlockPicker(
            pickerColor: selectedColor,
            availableColors: const [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.yellow,
              Colors.orange,
              Colors.purple,
              Colors.pink,
              Colors.teal,
            ],
            onColorChanged: (color) {
              setState(() {
                selectedColor = color;
              });
            },
            layoutBuilder: (context, colors, child) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: colors.map((color) => child(color)).toList(),
                ),
              );
            },
          ),
        ],
      ),
    );

  }
}
