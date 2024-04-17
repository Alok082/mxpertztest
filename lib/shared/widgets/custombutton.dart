import 'package:flutter/material.dart';
import 'package:mxpertztest/main.dart';

// ignore: must_be_immutable
class CostomButton extends StatelessWidget {
  String button_name;
  Function() buttonaction;
  double height;
  double width;
  Color? bottoncolor;
  Color? textcolor;

  CostomButton(
      {super.key,
      required this.button_name,
      required this.buttonaction,
      required this.height,
      required this.width,
      this.bottoncolor,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mq.height * height,
      width: mq.width * width,
      decoration: BoxDecoration(
        color: bottoncolor ?? const Color.fromARGB(255, 1, 29, 69),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: ElevatedButton(
          onPressed: () {
            buttonaction();
          },
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            backgroundColor: Colors.transparent,
            // elevation: 12,
            elevation: 0.0,
            // padding: EdgeInsets.symmetric(horizontal: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    button_name,
                    style: TextStyle(
                        color: textcolor ?? Color.fromARGB(255, 25, 17, 17),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
