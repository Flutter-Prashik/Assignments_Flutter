import 'package:flutter/material.dart';

class NetworkImages extends StatelessWidget {
  const NetworkImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Images'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  'https://cdn.dribbble.com/userupload/12018005/file/original-4a078b67bc8bc8c8a405b470aa71c47b.png?resize=400x0',
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  'https://miro.medium.com/v2/resize:fit:1400/1*lcXPKR9v39pUicSIWX8niA.jpeg',
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFX1RR4p59tgRV-EU1WYMriRxHgfnGkdqoCQ&usqp=CAU',
                  height: 300,
                  fit: BoxFit.fitHeight,
                ),
              )
            ],
          )),
    );
  }
}
