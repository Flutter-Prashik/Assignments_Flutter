import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'database_connection.dart';

List<Map<String, dynamic>> list = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await connection();
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
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  TextEditingController dateEditingController = TextEditingController();

  bool clicked = false;

  void editCard(Map<String, dynamic> toDoModalObj, BuildContext context) {
    setState(() {
      modalbottomsheet(true, context, toDoModalObj);
      titleEditingController.text = toDoModalObj['title'];
      descriptionEditingController.text = toDoModalObj["description"];
      dateEditingController.text = toDoModalObj['date'];
    });
  }

  // void deleteCard(Map<String, dynamic> toDoModalobj) {
  //   setState(() {
  //     delteTask(toDoModalobj['cardNo']);
  //   });
  // }

  void submit(bool isEdit, [Map<String, dynamic>? toDoModalobj]) {
    if (titleEditingController.text.trim().isNotEmpty &&
        descriptionEditingController.text.trim().isNotEmpty &&
        dateEditingController.text.trim().isNotEmpty) {
      if (!isEdit) {
        setState(() {
          addTask(
            ToDoModalClass(
              title: titleEditingController.text.trim(),
              description: descriptionEditingController.text.trim(),
              date: dateEditingController.text.trim(),
            ),
          );
        });
      } else {
        setState(() {
          // toDoModalobj!['title'] = titleEditingController.text.trim();
          // toDoModalobj['description'] =
          //     descriptionEditingController.text.trim();
          // toDoModalobj['date'] = dateEditingController.text.trim();
          editTask(
            ToDoModalClass(
              title: titleEditingController.text.trim(),
              description: descriptionEditingController.text.trim(),
              date: dateEditingController.text.trim(),
              cardNo: toDoModalobj!['cardNo'],
            ),
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          modalbottomsheet(false, context);
        },
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Good morning',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 30),
            child: Text(
              'Prashik',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'CREATE TO DO LIST',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                Container(
                  height: 686,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: ((context, index) {
                      return Slidable(
                          endActionPane: ActionPane(
                            extentRatio: 0.16,
                            motion: const ScrollMotion(),
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          editCard(list[index], context);
                                        });
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.1),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: const Icon(
                                          Icons.edit_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          deleteTask(list[index]['cardNo']);
                                        });
                                      },
                                      child: Container(
                                        height: 32,
                                        width: 32,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromRGBO(89, 57, 241, 1),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.1),
                                                blurRadius: 10,
                                              )
                                            ]),
                                        child: const Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          child: myCard(index));
                    }),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void modalbottomsheet(bool isEdit, BuildContext context,
      [Map<String, dynamic>? toDoModalobj]) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Create To-Do',
                    style: GoogleFonts.quicksand(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Text(
                        'Title',
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(89, 57, 241, 1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextField(
                    controller: titleEditingController,
                    style: GoogleFonts.quicksand(
                        fontSize: 12, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                      hintText: 'Please Enter Title ',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(89, 57, 241, 1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
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
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                      hintText: 'Enter the Description',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Text(
                        'Date',
                        style: GoogleFonts.quicksand(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(89, 57, 241, 1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
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
                      suffixIcon: const Icon(Icons.calendar_month_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Color.fromRGBO(89, 57, 241, 1),
                        ),
                      ),
                      hintText: '10 Jan 2024 ',
                      hintStyle: GoogleFonts.quicksand(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (isEdit) {
                          submit(isEdit, toDoModalobj);
                        } else {
                          submit(isEdit);
                        }
                      });

                      Navigator.of(context).pop();
                      titleEditingController.clear();
                      descriptionEditingController.clear();
                      dateEditingController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget myCard(int index) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   list[index]['isSelected'] = !list[index]['isSelected'];
        // });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                blurRadius: 20,
                spreadRadius: 0,
                offset: Offset(0, 4),
              )
            ],
          ),
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                      height: 52,
                      width: 52,
                      child: Image.asset('assets/imgLoading.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index]["title"],
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Text(
                        list[index]['description'],
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                      ),
                      Text(
                        list[index]['date'],
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 9,
                          color: const Color.fromRGBO(0, 0, 0, 0.7),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      // color: (!list[index]['isSelected'])
                      //     ? const Color.fromRGBO(0, 0, 0, 0.5)
                      //     : Colors.white,
                    ),
                  ),
                  // child: (list[index]["isSelected"])
                  //     ? const Icon(
                  //         Icons.check_circle,
                  //         color: Colors.green,
                  //       )
                  //     : const SizedBox(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
