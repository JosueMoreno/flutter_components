import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;

  const CustomCardType2({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).primaryColor.withOpacity(0.5),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      elevation: 7,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            fit: BoxFit.fill,
            width: double.infinity,
            height: 222,
            fadeInDuration: const Duration(milliseconds: 333),
          ),
          Container(
            padding: const EdgeInsets.only(right: 9),
            alignment: AlignmentDirectional.centerEnd,
            child: const Text('A beautiful landscape'),
          )
        ],
      ),
    );
  }
}
