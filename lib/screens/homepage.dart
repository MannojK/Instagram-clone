import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


import 'package:instagram/utils/stories.dart';

import '../utils/posts.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List images = [
    "assets/images/photo_1.jpeg",
    "assets/images/photo_2.jpeg",
    "assets/images/photo_3.jpeg",
    "assets/images/photo_4.jpeg",
    "assets/images/photo_5.jpg",
    "assets/images/photo_6.jpeg",
    "assets/images/photo_7.jpeg",
    "assets/images/photo_8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
      title:   Column(
        children: [
          Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/insta.png",
                            // color: Colors.black,
                            height: 55,
                            filterQuality: FilterQuality.high),
                      const  SizedBox(width: 0),
                        Image.asset(
                          "assets/left.png",
                          cacheWidth: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage(
                              'assets/heart.png',
                            ),
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const ImageIcon(
                            AssetImage(
                              'assets/messenger.png',
                            ),
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                
        ],
      ),
                    
    
            
            //   ***** STORIES
           
                    
      ),
    
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        child: SafeArea(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
           stories(),
           
          ],
                        ),
        ),
      ),
    );
  }
}
