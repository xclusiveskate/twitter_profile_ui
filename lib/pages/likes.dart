import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage({super.key});

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  // color: Colors.green,
                  border: Border(
                      top: BorderSide(
                        color: Color.fromARGB(255, 201, 201, 201),
                        width: 0.5,
                      ),
                      bottom: BorderSide(
                        color: Color.fromARGB(255, 193, 193, 193),
                        width: 0.5,
                      ))),
              height: 280,
              child: ListTile(
                leading: CircleAvatar(
                    child: Image.asset("assets/images/cartoon.png")),
                title: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Hassan",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const Text(
                          "@anigilajeoniran.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Text("11 Oct"),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.more_vert))
                      ],
                    ),
                    const Text(
                        """Exactly two months ago today, I started my software engineering journey.        During this time, I've learnt extensively at @sqiict, and tutorials from youtube, cousera &udacity.                                           I'm so excited to have learnt so much within this little period of time and buzzing to continue learning!
                """),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.comment_sharp)),
                              const Text("15")
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.roller_shades)),
                              const Text("6")
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.heart_broken_sharp)),
                              const Text("15")
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share)),
                              const Text('')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
