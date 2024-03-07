import 'package:educourse/uiuxdeg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        foregroundColor: Colors.black,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.notifications_outlined)],
      ),
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to New',
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w300, fontSize: 26.98),
                ),
                Text(
                  'Educourse',
                  style: GoogleFonts.jost(
                      fontWeight: FontWeight.w700, fontSize: 37),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  height: 57,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28.5)),
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.search),
                        hintText: 'Enter your Keyword',
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(143, 143, 143, 1)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  // horizontal: 33,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Course For You',
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 242,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 192,
                              height: 242,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(197, 4, 98, 1),
                                    Color.fromRGBO(80, 3, 112, 1)
                                  ],
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const UiUxFromScratch();
                                      },
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: [
                                      Text(
                                        'UX Designer from Scratch.',
                                        style: GoogleFonts.jost(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Image.asset('assets/uithinker.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              width: 192,
                              height: 242,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0, 77, 228, 1),
                                    Color.fromRGBO(1, 47, 135, 1),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      'Design Thinking The Beginner',
                                      style: GoogleFonts.jost(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Image.asset('assets/designthinker.png'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Course By Category',
                        style: GoogleFonts.jost(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                height: 36,
                                width: 36,
                                child: Image.asset('assets/uiux.png')),
                            Text(
                              'UI/UX',
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                height: 36,
                                width: 36,
                                child: Image.asset('assets/visual.png')),
                            Text(
                              'VISUAL',
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                height: 36,
                                width: 36,
                                child: Image.asset('assets/illustration.png')),
                            Text(
                              'ILLUSTRATION',
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                ),
                                height: 36,
                                width: 36,
                                child: Image.asset('assets/photo.png')),
                            Text(
                              'PHOTO',
                              style: GoogleFonts.jost(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
