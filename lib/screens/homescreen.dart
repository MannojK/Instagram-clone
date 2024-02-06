import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:instagram/utils/stories.dart';

import '../utils/posts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image.asset("assets/insta.png",height: 55,color: Colors.white,),

                   IconButton(onPressed: (){}, icon: Image.asset('assets/left.png',height:20,color: Colors.white,)),
                 ],
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   IconButton(onPressed: (){}, icon: Image.asset('assets/heart.png',height:22,color: Colors.white,)),
                   IconButton(onPressed: (){}, icon: Image.asset('assets/messenger.png',height:22,color: Colors.white,)),
                 ],
               ),
              ],

            ),),
      backgroundColor: Colors.black,
      
     body: 
     
     ListView(
      children: [
        Column(
          children: [
            //  ******   APPBAR 
          
stories(),
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
     )
    );
  }
}