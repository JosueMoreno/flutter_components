import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 100,
            max: 400,
            divisions: 100,
            value: sliderValue,
            activeColor: Theme.of(context).primaryColor,
            onChanged: sliderEnabled
                ? (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  }
                : null,
          ),
          Text(
            sliderValue.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SwitchListTile.adaptive(
            title: sliderEnabled
                ? const Text('Deshabilitar Slider')
                : const Text('Habilitar Slider'),
            value: sliderEnabled,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (value) {
              setState(() {
                sliderEnabled = value;
              });
            },
          ),
          const SizedBox(height: 13),
          Expanded(
            child: SingleChildScrollView(
              child: Image.network(
                'https://wallpaperaccess.com/full/328047.jpg',
                fit: BoxFit.contain,
                width: sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
