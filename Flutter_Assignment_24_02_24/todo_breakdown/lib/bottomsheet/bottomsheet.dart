import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Placeholder(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const MyBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Center(
              child: Text(
                'Create Task',
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Title',
              style: GoogleFonts.quicksand(
                  fontSize: 11, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  hintText: 'Lorem Ipsum typeseting industry. ',
                  hintStyle: GoogleFonts.quicksand(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(84, 84, 84, 1),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Description',
              style: GoogleFonts.quicksand(
                  fontSize: 11, fontWeight: FontWeight.w400),
            ),
            Expanded(
              child: SizedBox(
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    hintText:
                        "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
                    hintStyle: GoogleFonts.quicksand(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(84, 84, 84, 1),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              'Date',
              style: GoogleFonts.quicksand(
                  fontSize: 11, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                  ),
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          DatePickerDialog(
                            firstDate: DateTime(1999),
                            initialDate: DateTime(2024),
                            lastDate: DateTime(2040),
                          );
                        });
                      },
                      child: const Icon(Icons.calendar_month_outlined)),
                  hintText: '10-Jan-2024',
                  hintStyle: GoogleFonts.quicksand(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(84, 84, 84, 1),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  backgroundColor: const Color.fromRGBO(84, 84, 84, 1),
                ),
                child: Text(
                  'Submit',
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
