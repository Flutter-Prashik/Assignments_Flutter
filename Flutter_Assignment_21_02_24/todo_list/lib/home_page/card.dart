import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/home_page/home_paged.dart';

class CardCostumized extends StatefulWidget {
  final int index;
  const CardCostumized({super.key, required this.index});

  @override
  State<CardCostumized> createState() => _CardCostumizedState(index);
}

class _CardCostumizedState extends State<CardCostumized> {
  _CardCostumizedState(this.index);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: (index % 2 == 0)
              ? const Color(0xffFAE8E8)
              : const Color(0xffE8EDFA),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(0, 10),
            )
          ],
        ),
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/img.png'),
                      ),
                    ),
                  ),
                  Text(
                    list[index][2],
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index][0],
                      style: GoogleFonts.quicksand(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      list[index][1],
                      style: GoogleFonts.quicksand(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 15,
                          color: Color(0xff008B94),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.delete_outline_outlined,
                          size: 15,
                          color: Color(0xff008B94),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
