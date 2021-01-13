import 'package:flutter/material.dart';

class TenPlusOne extends StatefulWidget {
  @override
  _TenPlusOneState createState() => _TenPlusOneState();
}

class _TenPlusOneState extends State<TenPlusOne> {
  var _currnetSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            buildSlider(),
            Divider(),
          ],
        ));
  }

  Slider buildSlider() {
    return Slider(
            onChanged: (double value) {
              setState(() {
                _currnetSliderValue = value;
              });
            },
            value: _currnetSliderValue,
            min: 1000,
            max: 200000,
            divisions: 25,
            label: _currnetSliderValue.round().toString(),
          );
  }
}
