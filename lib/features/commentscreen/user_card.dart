import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserCard extends StatelessWidget {
  UserCard({
    super.key,
  });
  // last message (if null no message )

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    borderRadius: BorderRadius.circular(60)),
                child: InkWell(
                  onTap: () {},
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(60),
                  //   child:
                  //   CachedNetworkImage(
                  //     // height: ,
                  //     fit: BoxFit.fill,
                  //     imageUrl: userdata.image,
                  //     placeholder: (context, url) =>
                  //         const CupertinoActivityIndicator(),
                  //     errorWidget: (context, url, error) => Image.asset(
                  //       'asset/icons/applogo.png',
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " userdata.name",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //     messages != null
                  //         ? messages!.type == Type.image
                  //             ? 'image'
                  //             : messages!.type == Type.video
                  //                 ? 'video'
                  //                 : messages!.message
                  //         : userdata.about,
                  //     maxLines: 1,
                  //     style: const TextStyle(
                  //         color: Colors.white,
                  //         overflow: TextOverflow.ellipsis)),
                ],
              ),
            ],
          ),
        ));
  }
}
