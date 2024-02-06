import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class posts_build extends StatelessWidget {
  const posts_build({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
    return
      Container(
        height: 690,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF9B2282),
                                Color(0xFFEEA863),
                              ],
                            )),
                        child: Container(
                          width: 105,
                          height: 225,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage('assets/images/photo_1.png')),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Ram Bro",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                          AssetImage(
                            'assets/dots.png',
                          ),
                          color: Colors.white,
                          size: 20),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            //    **** POSTS

            Container(
              height: 500,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xff1f005c),
                    Color(0xff5b0060),
                    Color(0xff870160),
                    Color(0xffac255e),
                    Color(0xffca485c),
                    Color(0xffe16b5c),
                    Color(0xfff39060),
                    Color(0xffffb56b),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
              child: const Center(
                child: Text(
                  'From Night to Day',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //     **** LIKES COMMENTS SHARE

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                          AssetImage(
                            'assets/heart.png',
                          ),
                          color: Colors.white,
                          size: 25),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                          AssetImage(
                            'assets/chat.png',
                          ),
                          color: Colors.white,
                          size: 30),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                          AssetImage(
                            'assets/send.png',
                          ),
                          color: Colors.white,
                          size: 25),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const ImageIcon(
                          AssetImage(
                            'assets/save.png',
                          ),
                          color: Colors.white,
                          size: 25),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
