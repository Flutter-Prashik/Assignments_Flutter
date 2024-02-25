import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              shape: BoxShape.circle,
              color: const Color.fromRGBO(2, 147, 172, 1),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(10, -10),
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Color.fromARGB(255, 151, 146, 131)),
              ]),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn8UpzeUZ8uXraZ3XjvO8pFYghl7OiQSvZauchl-7uDQ&s',
          ),
        ),
      ),
    );
  }
}
