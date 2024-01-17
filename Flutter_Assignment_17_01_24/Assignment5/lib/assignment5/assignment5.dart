import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool ic = true;
  bool icsaved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.favorite_rounded,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 45,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/02/18/05/15/insta-6026144_1280.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 45,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/02/18/05/15/insta-6026144_1280.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 45,
                  child: Image.network(
                      'https://cdn.pixabay.com/photo/2021/02/18/05/15/insta-6026144_1280.png'),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://img.freepik.com/free-psd/social-media-instagram-post-template_47618-73.jpg?size=338&ext=jpg&ga=GA1.1.632798143.1705363200&semt=ais',
                width: double.infinity,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => setState(() {
                      ic = !ic;
                    }),
                    icon: ic
                        ? const Icon(Icons.favorite_border)
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  IconButton(
                    onPressed: () => setState(() {
                      icsaved = !icsaved;
                    }),
                    icon: icsaved
                        ? const Icon(Icons.bookmark)
                        : const Icon(Icons.bookmark_add_outlined),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://img.freepik.com/free-psd/social-media-instagram-post-template_47618-73.jpg?size=338&ext=jpg&ga=GA1.1.632798143.1705363200&semt=ais',
                width: double.infinity,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => setState(() {
                      ic = !ic;
                    }),
                    icon: ic
                        ? const Icon(Icons.favorite_border)
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  IconButton(
                    onPressed: () => setState(() {
                      icsaved = !icsaved;
                    }),
                    icon: icsaved
                        ? const Icon(Icons.bookmark)
                        : const Icon(Icons.bookmark_add_outlined),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
