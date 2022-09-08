import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:twiterf2/like.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: double.infinity,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(

              elevation: 10,
              shape: Border.all(color: Colors.black,
              ),
              // color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Text("Mr- Luckey",style: TextStyle(color: Colors.black),),
                        SizedBox(width: 10,),
                        Text("@status field"),
                        SizedBox(width: 10,),
                        Text(".22h"),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Here is my twite ia am a frealuncer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: LikeButton(
                        size: 40,
                        likeCount: 999,
                        // key: _globalKey,
                        countBuilder: (int? count, bool isLiked, String text) {
                          final ColorSwatch<int> color =
                          isLiked ? Colors.pinkAccent : Colors.grey;
                          Widget result;
                          if (count == 0) {
                            result = Text(
                              'love',
                              style: TextStyle(color: color),
                            );
                          } else
                            result = Text(
                              count! >= 1000
                                  ? (count / 1000.0).toStringAsFixed(1) + 'k'
                                  : text,
                              style: TextStyle(color: color),
                            );
                          return result;
                        },
                        likeCountAnimationType: 999 < 1000
                            ? LikeCountAnimationType.part
                            : LikeCountAnimationType.none,
                        likeCountPadding: const EdgeInsets.only(left: 15.0),
                        // onTap: onLikeButtonTapped,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
