import 'package:flutter/material.dart';
import 'package:twitter_profile_ui/pages/likes.dart';
import 'package:twitter_profile_ui/pages/media.dart';
import 'package:twitter_profile_ui/pages/tweets.dart';
import 'package:twitter_profile_ui/pages/tweets_replies.dart';

class BodyTabPage extends StatefulWidget {
  const BodyTabPage({super.key});

  @override
  State<BodyTabPage> createState() => _BodyTabPageState();
}

class _BodyTabPageState extends State<BodyTabPage>
    with SingleTickerProviderStateMixin {
  late TabController tabC;

  @override
  void initState() {
    super.initState();
    tabC = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(microseconds: 1));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blueGrey,
                controller: tabC,
                tabs: const [
                  Text("Tweets"),
                  Text("Tweets & replies"),
                  Text("Media"),
                  Text("Likes"),
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(controller: tabC, children: const [
              Tab(
                child: Tweets(),
              ),
              Tab(
                child: TweetsRep(),
              ),
              Tab(
                child: MediaPage(),
              ),
              Tab(child: LikesPage()),
            ]),
          )
        ],
      ),
    );
  }
}
