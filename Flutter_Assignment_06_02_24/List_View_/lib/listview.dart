import 'package:flutter/material.dart';

class ListViewScroll extends StatefulWidget {
  const ListViewScroll({super.key});
  @override
  State<StatefulWidget> createState() => _ListViewScrollState();
}

class _ListViewScrollState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Scroll'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
                'https://media.istockphoto.com/id/1189378904/vector/mobile-apps-creation-of-a-mobile-application-web-page-created-from-separate-blocks-user.jpg?s=612x612&w=0&k=20&c=HIiI8lu3-_-IhUS-Jj20zw0AS-w1FIKXGn_l4qdHAzQ='),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
                'https://www.shutterstock.com/image-vector/designer-creator-individual-design-user-260nw-2127120236.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdow6ZZi2hgH9iVtAOPpqKMZJiYYpcgrX8x3hzP8AqrmFD6Gv478p6SI6u44ASNuFUpSo&usqp=CAU'),
          )
        ],
      ),
    );
  }
}
