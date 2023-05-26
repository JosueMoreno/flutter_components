import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 11,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 7),
          CustomCardType2(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',
          ),
          SizedBox(height: 7),
          CustomCardType2(
            imageUrl:
                'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6.jpg',
          ),
          SizedBox(height: 7),
          CustomCardType2(
            imageUrl:
                'https://hips.hearstapps.com/hmg-prod/images/screen-shot-2018-07-11-at-5-06-55-pm-1531343396.png',
          ),
        ],
      ),
    );
  }
}
