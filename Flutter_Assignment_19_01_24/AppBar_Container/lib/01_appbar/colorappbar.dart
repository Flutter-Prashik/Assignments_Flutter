import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text('Appbar '),
        actions: const [
          Icon(Icons.menu),
          Icon(
            Icons.format_overline,
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
