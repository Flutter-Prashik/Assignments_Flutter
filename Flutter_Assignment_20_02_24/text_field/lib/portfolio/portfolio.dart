import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<StatefulWidget> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  Widget textfieldShort(String label, controller) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  List<List<String>> info = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio !'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Name : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textfieldShort('Full Name', nameController),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Company : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textfieldShort('Dream Company', companyController),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Location : ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                textfieldShort('Location', locationController),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    info.add([
                      'Name : ${nameController.text}',
                      'Company : ${companyController.text}',
                      'Location : ${locationController.text}'
                    ]);
                    nameController.clear();
                    companyController.clear();
                    locationController.clear();
                  });
                },
                child: const Text('Submit')),
            const SizedBox(
              height: 25,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                  itemCount: info.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        color: Colors.yellow[50],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(info[index][0]),
                            Text(info[index][1]),
                            Text(info[index][2]),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
