import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram/utils/posts.dart';

import 'package:instagram/utils/stories.dart';

class pagebar extends StatelessWidget {
  const pagebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                       children: [
                         Image.asset("assets/insta.png",height: 53,color: Colors.white,),
      
                         IconButton(onPressed: (){}, icon: Image.asset('assets/left.png',height:20,color: Colors.white,)),
                       ],
                     ),
                     Row(
                       children: [
                         IconButton(onPressed: (){}, icon: Image.asset('assets/heart.png',height:22,color: Colors.white,)),
                         IconButton(onPressed: (){}, icon: Image.asset('assets/messenger.png',height:22,color: Colors.white,)),
                       ],
                     ),
                    ],
      
                  ),
      ),
      body: ListView(
       children: const [
         Column(
         children:  [
           const stories(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      posts(),
      
         ],
         )
       ],
      ),
      
    );
  }
}