
import 'package:flutter/material.dart';

// ignore: camel_case_types
class config extends StatefulWidget {
  const config({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _configState createState() => _configState();
}

// ignore: camel_case_types
class _configState extends State<config> {
  double _contrastValue = 1.0;
  double _fontSizeValue = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuracion'),
          backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Texto de ejemplo",
              style: TextStyle(
                fontSize: _fontSizeValue,
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            Text("Contraste: ${_contrastValue.toStringAsFixed(1)}"),
            Slider(
              value: _contrastValue,
              min: 1.0,
              max: 10.0,
              divisions: 9,
              onChanged: (value) {
                setState(() {
                  _contrastValue = value;
                });
              },
            ),
            SizedBox(height: 30),
            Text("Tamaño: ${_fontSizeValue.toInt()}"),
            Slider(
              value: _fontSizeValue,
              min: 10.0,
              max: 50.0,
              onChanged: (value) {
                setState(() {
                  _fontSizeValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* class config extends StatefulWidget {
  const config({super.key});

  @override
  State<config> createState() => _configState();
}

class _configState extends State<config> {

  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Configuracion'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const SizedBox(
            height: 40,
            
            ),
            Text("Tamaño de letra"),
            Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double valueIn){
              setState(() {
                _currentSliderValue = valueIn;
              });
            }),
            Text("${_currentSliderValue.round()}"),

            const SizedBox(
            height: 40,
            
            ),
            Text("Contraste"),
            Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double valueIn){
              setState(() {
                _currentSliderValue = valueIn;
              });
            }),
            Text("${_currentSliderValue.round()}"),
            
          ],
          
        )),
      );
  }
} 
 */