// ignore: file_names
import 'package:flutter/material.dart';
import 'package:test_app/Assignment6_Netflix/mostpopular/mostpopular.dart';
import 'package:test_app/Assignment6_Netflix/movies/movies.dart';
import 'package:test_app/Assignment6_Netflix/webseries/webseries..dart';

class LandingPageNetflix extends StatelessWidget {
  const LandingPageNetflix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/227_Netflix_logo-512.png',
          fit: BoxFit.fitWidth,
          width: 10,
        ),
        title: Image.network(
          'https://assets.stickpng.com/images/580b57fcd9996e24bc43c529.png',
          height: 50,
          fit: BoxFit.fitHeight,
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey[900],
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Movies',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Movies(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Web Series',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              WebSeries(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Most Popular',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              MostPopular()
            ],
          ),
        ),
      ),
    );
  }
}
