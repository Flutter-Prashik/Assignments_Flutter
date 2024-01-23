import 'package:flutter/material.dart';

class WebSeries extends StatelessWidget {
  const WebSeries({
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
            'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg',
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943',
            height: 180,
            width: 120,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.network(
            'https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
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
