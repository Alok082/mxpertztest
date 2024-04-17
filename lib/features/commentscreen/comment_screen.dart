import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mxpertztest/features/commentscreen/user_card.dart';

class CommentScreen extends StatelessWidget {
  List<String> images = [
    "assets/images/girl5 1-1.png",
    "assets/images/girl5 1-2.png",
    "assets/images/girl5 1-3.png",
    "assets/images/girl5 1.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 248, 206, 88),
        title: const Text(
          "Comments",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            // height: 80,
            width: double.infinity,
            // color: Colors.blue,
            child: Row(
              children: [
                Container(
                  // height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(images[index])),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 22),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("5min ago")
                        ],
                      ),
                      Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          "is simply dummy dustry. ")
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
