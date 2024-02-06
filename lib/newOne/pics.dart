import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:instagram/utils/posts.dart';

import '../utils/stories.dart';

class Pics extends StatefulWidget {
  const Pics({super.key});

  @override
  State<Pics> createState() => _PicsState();
}

class _PicsState extends State<Pics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
// snap: false,
              floating: true,
              expandedHeight: 20,
              backgroundColor: Colors.black,
              elevation: 10,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/insta.png",
                        height: 53,
                        color: Colors.white,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/left.png',
                            height: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/heart.png',
                            height: 22,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/messenger.png',
                            height: 22,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: stories(),
            ),
            // ignore: use_function_type_syntax_for_parameters
            SliverList(
                delegate: SliverChildBuilderDelegate(childCount: 34,
                    (context, index) {
              return SizedBox(
                height: 600,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
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
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 15, 14, 14),
                                        spreadRadius: 1,
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/photo_1.png')),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Ram Bro",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PopupMenuButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ), //don't specify icon if you want 3 dot menu
                              color: Colors.black,
                              itemBuilder: (context) => [
                                const PopupMenuItem<int>(
                                  value: 0,
                                  child: Text(
                                    "Setting",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const PopupMenuItem<int>(
                                  value: 0,
                                  child: Text(
                                    "Share ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                              onSelected: (item) => {print(item)},
                            ),
                          ],
                        ),
                      ],
                    ),
                    //  ***** POSTS 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: SizedBox(
                        height: 350,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/photo_6.jpeg',fit: BoxFit.cover,),
                      ),
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
                      icon: const ImageIcon(
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
            }))
          ],
        ),
      ),
    );
  }
}
