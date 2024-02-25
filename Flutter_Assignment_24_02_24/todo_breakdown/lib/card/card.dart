import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 30,
        ),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: ((context, index) {
            return const CardBasic();
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CardBasic extends StatefulWidget {
  const CardBasic({super.key});

  @override
  State<CardBasic> createState() => _CardBasicState();
}

class _CardBasicState extends State<CardBasic> {
  List colorList = [
    const Color(0xFFFAE8E8),
    const Color(0xffE8EDFA),
    const Color(0xffFAF9E8),
    const Color(0xffFAE8FA),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorList[0],
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                height: 52,
                width: 52,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromRGBO(0, 0, 0, 0.07),
                    ),
                  ],
                ),
                child: Image.asset('/assets/img.png'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Text(
                  '10-July-2023',
                  style: GoogleFonts.quicksand(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(132, 132, 132, 1),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
                  child: Text(
                    'Lorem Ipsum is simply setting industry.',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color.fromRGBO(84, 84, 84, 1)),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      size: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.delete_outline,
                        size: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
