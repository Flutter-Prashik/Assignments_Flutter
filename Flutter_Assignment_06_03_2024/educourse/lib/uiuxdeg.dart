import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

List<ModelClass> data = [
  ModelClass(
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      title: "Introduction "),
  ModelClass(
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      title: "Lorem Ipsum is simply setting industry. "),
];

class UiUxFromScratch extends StatefulWidget {
  const UiUxFromScratch({super.key});

  @override
  State<UiUxFromScratch> createState() => _UiUxFromScratchState();
}

class _UiUxFromScratchState extends State<UiUxFromScratch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 3, 112, 1),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(197, 4, 98, 1),
                  Color.fromRGBO(80, 3, 112, 1),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UX Designer from Scratch.',
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w500,
                            fontSize: 32.61,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Basic guideline & tips & tricks for how to become a UX designer easily.',
                            style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color.fromRGBO(228, 205, 225, 1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(0, 82, 178, 1),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.person_outline_outlined,
                                      color: Colors.white,
                                      size: 34,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: ' Author:',
                                          style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: const Color.fromRGBO(
                                                  190, 154, 197, 1)),
                                        ),
                                        TextSpan(
                                          text: ' Jenny',
                                          style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: const Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //     color:
                                  //         const Color.fromRGBO(0, 82, 178, 1),
                                  //     shape: BoxShape.circle,
                                  //     border: Border.all(
                                  //       width: 1,
                                  //       color: const Color.fromRGBO(
                                  //           255, 255, 255, 1),
                                  //     ),
                                  //   ),
                                  //   child: const Icon(
                                  //     Icons.person_outline_outlined,
                                  //     color: Colors.white,
                                  //     size: 34,
                                  //   ),
                                  // ),
                                  Text(
                                    '4.8 ',
                                    style: GoogleFonts.jost(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1)),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: const Color.fromRGBO(255, 146, 0, 1),
                                  ),
                                  Text(
                                    '(20 review)',
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: const Color.fromRGBO(
                                          190, 154, 197, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 40)
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 10,
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 46,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 239, 239, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/youtube.png'),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  data[index].description,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.jost(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(143, 143, 143, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ModelClass {
  ModelClass({required this.description, required this.title});
  final String title;
  final String description;
}
