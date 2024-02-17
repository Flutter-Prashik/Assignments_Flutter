import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoStateState();
}

class _TextFieldDemoStateState extends State<TextFieldDemo> {
  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _naemFocusNode = FocusNode();

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField !'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: _namesTextEditingController,
                focusNode: _naemFocusNode,
                decoration: InputDecoration(
                  label: const Text('User Name !'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                ),
                textInputAction: TextInputAction.done,
                // cursorColor: Colors.amber,
                // keyboardType: TextInputType.emailAddress,
                // onChanged: (value) {
                //   debugPrint("onchanged : $value");
                // },
                onSubmitted: (value) {
                  setState(() {
                    list.add(_namesTextEditingController.text.toString());
                  });
                  _namesTextEditingController.clear();
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        (20),
                      ),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    margin: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(child: Text(list[index])),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
