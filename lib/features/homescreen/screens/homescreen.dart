import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/homebackground.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black12,
                ),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                child: Text(
                  "Tracking",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                "Post",
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(),
          Center(child: Image.asset("assets/icons/playicon.png")),
          Spacer()
        ],
      ),
    ));
  }
}
