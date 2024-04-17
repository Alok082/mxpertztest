import 'package:flutter/material.dart';
import 'package:mxpertztest/main.dart';
import 'package:mxpertztest/shared/widgets/custombutton.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios_new),
        // title: const Text("Profile Screen"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: mq.height * 0.12,
                  width: mq.height * 0.12,

                  // padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.amber, width: 2.3)),
                  child: CircleAvatar(
                    radius: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/profilepic.png"),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text("Following"), Text("0")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text("Followers"), Text("0")],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text("Posts"), Text("0")],
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "John Doe",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CostomButton(
              button_name: "Edit profile",
              buttonaction: () {},
              textcolor: Colors.white,
              height: 0.06,
              width: 0.9,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            // height: 600,
            child: GridView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
