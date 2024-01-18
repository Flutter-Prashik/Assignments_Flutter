import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  const Movies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
            height: 400,
            width: 275,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
            height: 400,
            width: 275,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
            height: 400,
            width: 275,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
