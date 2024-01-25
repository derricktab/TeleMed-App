import 'package:flutter/material.dart';

import 'ChatSample_screen.dart';

class ChatScreen extends StatelessWidget {
  final String name;
  final String img;
  const ChatScreen({required this.name, required this.img, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: const Color(0xFF7165D6),
          leadingWidth: 35,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 35,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/$img"),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 170,
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) => const ChatSample(),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Type Something", border: InputBorder.none),
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF7165D6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
