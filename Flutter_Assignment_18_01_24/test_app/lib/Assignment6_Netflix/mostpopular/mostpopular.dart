import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({
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
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc',
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s',
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png',
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
