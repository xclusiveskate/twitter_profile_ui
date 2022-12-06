// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaState();
}

class _MediaState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 16.0),
      // color: Colors.green,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              // color: Colors.blue,
              height: 100,
              width: 200,
              child: Image.asset(
                "assets/images/cartoon.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Lights, camera...",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "attachments!",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Your photo and video will show up here",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
