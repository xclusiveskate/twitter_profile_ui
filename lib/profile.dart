// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:twitter_profile_ui/pages/body_tab.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(50)),
            width: 20,
            height: 20,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(100)),
              width: 40,
              height: 40,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)),
                width: 40,
                height: 40,
                child: PopupMenuButton(
                  padding: const EdgeInsets.all(0),
                  elevation: 10,
                  splashRadius: 5.0,
                  enableFeedback: true,
                  position: PopupMenuPosition.over,
                  shape: const Border(
                      left: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                          strokeAlign: StrokeAlign.inside),
                      bottom: BorderSide(
                          color: Colors.green,
                          width: 1.0,
                          strokeAlign: StrokeAlign.inside)),
                  onCanceled: () {},
                  onSelected: (value) {
                    print(value);
                  },
                  itemBuilder: (context) {
                    return [
                      const PopupMenuItem(value: 1, child: Text("Share")),
                      const PopupMenuItem(value: 2, child: Text("Drafts")),
                      const PopupMenuItem(
                          value: 3, child: Text("Lists you're on")),
                      const PopupMenuItem(
                          value: 4, child: Text("View Moments")),
                      const PopupMenuItem(value: 5, child: Text("QR code")),
                    ];
                  },
                  icon: const Icon(Icons.more_vert),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        height: 100,
                        width: double.infinity,
                        child: const Text(""),
                      ),
                      Positioned(
                        left: 20,
                        top: 60,
                        child: GestureDetector(
                          onTap: () {
                            print("This is profile image");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/sqi.jpg")),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: const Color.fromARGB(
                                        255, 241, 237, 237),
                                    width: 3.0)),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)))),
                        child: const Text(
                          "Edit profile",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Container(
                    child: const ListTile(
                      title: Text(
                        "Afolabi Abdullahi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("@xclusiveskate"),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.calendar_month,
                                size: 15.0,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text("Joined June 2019")
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "3000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Following"),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("1000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text("Followers"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const BodyTabPage(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
