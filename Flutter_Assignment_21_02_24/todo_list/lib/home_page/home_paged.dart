import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list/home_page/card.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<CardCostumized> list = [
  const CardCostumized(
      title: 'Lorem Ipsum is simply setting industry. ',
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      date: '10 July 2023',
      index: 0),
  const CardCostumized(
      title: 'Lorem Ipsum is simply setting industry. ',
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      date: '10 July 2023',
      index: 0),
  const CardCostumized(
      title: 'Lorem Ipsum is simply setting industry. ',
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      date: '10 July 2023',
      index: 0),
  const CardCostumized(
      title: 'Lorem Ipsum is simply setting industry. ',
      description:
          'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
      date: '10 July 2023',
      index: 0)
];

class _HomePageState extends State<HomePage> {
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  TextEditingController dateEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To-Do List',
          style:
              GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 26),
        ),
        backgroundColor: const Color(0xff02A7B1),
        foregroundColor: const Color(0xffFFFFFF),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          'Create Task',
                          style: GoogleFonts.quicksand(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: Row(
                          children: [
                            Text(
                              'Title',
                              style: GoogleFonts.quicksand(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 40,
                          width: 330,
                          child: TextField(
                            controller: titleEditingController,
                            style: GoogleFonts.quicksand(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  width: 0.5,
                                  color: Color(0xFF008B94),
                                ),
                              ),
                              hintText: 'Lorem Ipsum typeseting industry. ',
                              hintStyle: GoogleFonts.quicksand(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: Row(
                          children: [
                            Text(
                              'Description',
                              style: GoogleFonts.quicksand(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 330,
                          child: TextField(
                            controller: descriptionEditingController,
                            style: GoogleFonts.quicksand(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            maxLines: 3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  width: 0.5,
                                  color: Color(0xFF008B94),
                                ),
                              ),
                              hintText:
                                  'Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s',
                              hintStyle: GoogleFonts.quicksand(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        child: Row(
                          children: [
                            Text(
                              'Date',
                              style: GoogleFonts.quicksand(
                                  fontSize: 11, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 40,
                          width: 330,
                          child: TextField(
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025),
                              );
                              String formatedDate =
                                  DateFormat.yMMMd().format(pickedDate!);
                              setState(() {
                                dateEditingController.text = formatedDate;
                              });
                            },
                            readOnly: true,
                            controller: dateEditingController,
                            style: GoogleFonts.quicksand(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                              suffixIcon:
                                  const Icon(Icons.calendar_month_outlined),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  width: 0.5,
                                  color: Color(0xFF008B94),
                                ),
                              ),
                              hintText: '10 Jan 2024 ',
                              hintStyle: GoogleFonts.quicksand(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              list.add(CardCostumized(
                                  title: titleEditingController.text,
                                  description:
                                      descriptionEditingController.text,
                                  date: dateEditingController.text,
                                  index: 0));
                              Navigator.pop(context);
                              titleEditingController.clear();
                              descriptionEditingController.clear();
                              dateEditingController.clear();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(300, 50),
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 139, 148),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        backgroundColor: const Color(0xff02A7B1),
        foregroundColor: const Color(0xffFFFFFF),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: ((context, index) {
            return CardCostumized(
                title: titleEditingController.text,
                description: descriptionEditingController.text,
                date: dateEditingController.text,
                index: index);
          }),
        ),
      ),
    );
  }
}
